
import time
import pymysql
import ruamel.yaml
import argparse
import sys
import os

from daisy import parse_yaml

yaml = ruamel.yaml.YAML()
yaml.preserve_quotes = True
yaml.indent(mapping=2, sequence=4, offset=2)

config = None
with open('db2yaml.yaml', 'r') as fd:
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
        database="acore_world",
        cursorclass=cursorType
    )

def extract_creature(entry, columns):
    dbc = db()
    cursorObject = dbc.cursor()
    columns_string = ','.join(columns)
    cursorObject.execute(f"SELECT * FROM creature WHERE id1 = {entry};")
    result = cursorObject.fetchall()
    return False, result

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-t", "--table", required=True)
    parser.add_argument("-e", "--entry", required=True)
    parser.add_argument("-p", "--pack", required=True)
    parser.add_argument("-v", "--version", required=True)
    parser.add_argument("-c", "--columns", nargs="*", required=True)
    args = parser.parse_args()

    now = int(round(time.time()))
    write_to_path = f"./packs/db2sql/{args.pack}_{args.version}"
    if not os.path.exists(write_to_path):
        os.makedirs(write_to_path)

    if args.table == "creature":
        error, result = extract_creature(args.entry, args.columns)
        if error:
            print(f"Error: {error}")
        
        final = {
            "creature": result
        }

        with open(f"{write_to_path}/{args.table}_{now}.yml", "w") as fd:
            yaml.dump(final, fd)

if __name__ == "__main__":
    main()
