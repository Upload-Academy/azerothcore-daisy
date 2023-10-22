
import pymysql
import ruamel.yaml

from jinja2 import Template

yaml = ruamel.yaml.YAML()
yaml.preserve_quotes = True

config = None
with open('config.yaml', 'r') as fd:
    config = yaml.load(fd)

def db():
    serverIP = config['extractor']['database']['hostname']
    serverUser = config['extractor']['database']['username']
    serverUserPwd = config['extractor']['database']['password']
    cursorType = pymysql.cursors.DictCursor

    return pymysql.connect(
        host=serverIP,
        user=serverUser,
        password=serverUserPwd,
        cursorclass=cursorType
    )

def parse_tmpl(file):
    fd = open(file, 'r')
    return Template(fd.read())

def main():
    tables = config['extractor']['tables']
    dbc = db()

    sql_template = parse_tmpl(f"{config['extractor']['templates']}/sql.j2")
    function_template = parse_tmpl(f"{config['extractor']['templates']}/py.j2")
    cursorObject = dbc.cursor()

    for table in tables:
        sql_fd = open(f"{config['extractor']['output_to']}/sql/{table}.sql", "w")
        yaml_fd = open(f"{config['extractor']['output_to']}/yaml/{table}.yaml", "w")
        py_fd = open(f"{config['extractor']['output_to']}/py/{table}.py", "w")

        cursorObject.execute(f"DESCRIBE {config['extractor']['database']['db']}.{table}")
        indexList = cursorObject.fetchall()

        # This is what the data structure like. This is fed to the SQL template.
        data = {
            "variables": [
                # {
                #     "key": "value",
                #     "value": "value",
                #     "type": "value",
                # }
            ],
            "table": {
                "name": table,
                "columns": [
                    # "column_name",
                ],
                "values": [
                    # "column_value",
                ],
                "conditions": [
                    # {
                    #     "column": "",
                    #     "comparison": "",
                    #     "value": "",
                    # }
                ],
            }
        }

        # This becomes the YAML defaults file
        document = {
            data['table']['name']: {},
        }

        for o in indexList:
            # This is what we get back from MySQL:
            # o = {
            #     'Field': 'modelid4',
            #     'Type': 'int(10) unsigned',
            #     'Null': 'NO',
            #     'Key': '',
            #     'Default': '0',
            #     'Extra': ''
            # }

            # YAML document related work
            field_type = None
            field_nullable = False
            final_value = None

            if o['Null'] == "YES":
                field_nullable = True

            if 'int' in o['Type']:
                final_value = o['Default'] or 0
                field_type = "int"

            elif 'float' in o['Type']:
                final_value = o['Default'] or 0
                field_type = "float"
        
            elif 'char' in o['Type'] or 'text' in o['Type']:
                final_value = o['Default'] or ""
                field_type = "string"
            
            document[data['table']['name'].lower()][o['Field'].lower()] = final_value

            # SQL related worked
            # Populate the SQL data
            if o['Key'] == 'PRI':
                data['table']['conditions'].append({
                    "column": o['Field'].lower(),
                    "comparison": "=",
                    "value": f"@{o['Field'].lower()}",
                })

            data['variables'].append({
                "key": o['Field'].lower(),
                "value": f"{{{o['Field'].lower()}}}",
                "type": field_type,
                "nullable": field_nullable,
            })
            data['table']['columns'].append(o['Field'].lower())
            data['table']['values'].append(f"@{o['Field'].lower()}")

        py_fd.write(function_template.render(data=data))
        sql_fd.write(sql_template.render(data=data))
        
        py_fd.close()
        sql_fd.close()
        yaml.dump(document, yaml_fd)

    dbc.close()

if __name__ == "__main__":
    main()
