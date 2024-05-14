
import os
import argparse
import pymysql
import ruamel.yaml

from jinja2 import Template

yaml = ruamel.yaml.YAML()
yaml.preserve_quotes = True

config = None

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

def is_special_keyword(column):
    if column == "class":
        return True

    return False

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-c", "--config", help="Config file", required=False, default="./extractor.yaml")
    args = parser.parse_args()

    with open(args.config, 'r') as fd:
        global config
        config = yaml.load(fd)

    if not os.path.exists(config['extractor']['output_to']):
        os.makedirs(config['extractor']['output_to'])

    tables = config['extractor']['tables']
    dbc = db()

    sql_template = parse_tmpl(f"{config['extractor']['templates']}/sql.j2")
    function_template = parse_tmpl(f"{config['extractor']['templates']}/py.j2")
    cursorObject = dbc.cursor()

    for table in tables:
        sql_path = f"{config['extractor']['output_to']}/sql"
        if not os.path.exists(sql_path): os.makedirs(sql_path)

        yaml_path = f"{config['extractor']['output_to']}/yaml"
        if not os.path.exists(yaml_path): os.makedirs(yaml_path)
        
        py_path = f"{config['extractor']['output_to']}/py"
        if not os.path.exists(py_path): os.makedirs(py_path)

        sql_fd = open(f"{sql_path}/{table}.sql", "w")
        yaml_fd = open(f"{yaml_path}/{table}.yaml", "w")
        py_fd = open(f"{py_path}/{table}.py", "w")

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
            
            parsed_field = o['Field'].lower()
            if is_special_keyword(parsed_field):
                parsed_field = f"_{parsed_field}"

            document[data['table']['name'].lower()][parsed_field] = final_value

            # SQL related worked
            # Populate the SQL data
            if o['Key'] == 'PRI':
                data['table']['conditions'].append({
                    "column": parsed_field,
                    "comparison": "=",
                    "value": f"@{parsed_field}",
                })

            data['variables'].append({
                "key": parsed_field,
                "value": f"{{{parsed_field}}}",
                "type": field_type,
                "nullable": field_nullable,
            })
            data['table']['columns'].append(parsed_field)
            data['table']['values'].append(f"@{parsed_field}")

        py_fd.write(function_template.render(data=data))
        sql_fd.write(sql_template.render(data=data))
        
        py_fd.close()
        sql_fd.close()
        yaml.dump(document, yaml_fd)

    dbc.close()

if __name__ == "__main__":
    main()
