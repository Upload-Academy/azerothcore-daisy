
import datetime
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
    serverIP = config['database']['hostname']
    serverUser = config['database']['username']
    serverUserPwd = config['database']['password']
    cursorType = pymysql.cursors.DictCursor

    return pymysql.connect(
        host=serverIP,
        user=serverUser,
        password=serverUserPwd,
        database="acore_world",
        cursorclass=cursorType
    )

def extract_creature_template(entry, columns):
    dbc = db()
    cursorObject = dbc.cursor()
    
    if not columns or len(columns) <= 0:
        columns_string = "*"
    else:
        columns_string = ','.join(columns)
    
    cursorObject.execute(f"SELECT {columns_string} FROM creature_template WHERE entry = {entry};")
    result = cursorObject.fetchall()
    return False, result

def extract_waypoint_data(entry, columns):
    dbc = db()
    cursorObject = dbc.cursor()

    if not columns or len(columns) <= 0:
        columns_string = "*"
    else:
        columns_string = ','.join(columns)

    final_sql = f"SELECT {columns_string} FROM waypoint_data WHERE id = {entry};"
    print(final_sql)
    cursorObject.execute(final_sql)
    result = cursorObject.fetchall()
    return False, result

def extract_item_template(entry, columns):
    dbc = db()
    cursorObject = dbc.cursor()

    if not columns or len(columns) <= 0:
        columns_string = "*"
    else:
        columns_string = ','.join(columns)

    final_sql = f"SELECT {columns_string} FROM item_template WHERE entry = {entry};"
    cursorObject.execute(final_sql)
    result = cursorObject.fetchall()
    return False, result

def extract_gameobject_template(entry, columns):
    dbc = db()
    cursorObject = dbc.cursor()

    if not columns or len(columns) <= 0:
        columns_string = "*"
    else:
        columns_string = ','.join(columns)

    final_sql = f"SELECT {columns_string} FROM gameobject_template WHERE entry = {entry};"
    cursorObject.execute(final_sql)
    result = cursorObject.fetchall()
    return False, result

def extract_gameobject_loot_template(entry, columns):
    dbc = db()
    cursorObject = dbc.cursor()

    if not columns or len(columns) <= 0:
        columns_string = "*"
    else:
        columns_string = ','.join(columns)

    final_sql = f"SELECT {columns_string} FROM gameobject_loot_template WHERE entry = {entry};"
    cursorObject.execute(final_sql)
    result = cursorObject.fetchall()
    return False, result

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-t", "--table", required=True)
    parser.add_argument("-e", "--entry", required=True)
    parser.add_argument("-p", "--pack", required=True)
    parser.add_argument("-v", "--version", required=True)
    parser.add_argument("-c", "--columns", nargs="*", required=False)
    args = parser.parse_args()

    now = datetime.datetime.now()
    now_int = int(round(time.time()))
    write_to_path = f"./packs/db2yaml/{args.pack}_{args.version}"
    if not os.path.exists(write_to_path):
        os.makedirs(write_to_path)

    if args.table == "item_template":
        error, result = extract_item_template(args.entry, args.columns)
        if error:
            print(f"Error: {error}")

        final = {
            f"{args.table}": result
        }

        with open(f"{write_to_path}/{args.table}_{now_int}.yml", "w") as fd:
            yaml.dump(final, fd)

    if args.table == "gameobject_loot_template":
        error, result = extract_gameobject_loot_template(args.entry, args.columns)
        if error:
            print(f"Error: {error}")

        final = {
            f"{args.table}": result
        }

        with open(f"{write_to_path}/{args.table}_{now_int}.yml", "w") as fd:
            yaml.dump(final, fd)

    if args.table == "gameobject_template":
        error, result = extract_gameobject_template(args.entry, args.columns)
        if error:
            print(f"Error: {error}")

        final = {
            f"{args.table}": result
        }

        with open(f"{write_to_path}/{args.table}_{now_int}.yml", "w") as fd:
            yaml.dump(final, fd)

    if args.table == "creature_template":
        error, result = extract_creature_template(args.entry, args.columns)
        if error:
            print(f"Error: {error}")
        
        final = {
            f"{args.table}": result
        }

        with open(f"{write_to_path}/{args.table}_{now_int}.yml", "w") as fd:
            yaml.dump(final, fd)

    if args.table == "waypoint_data":
        error, result = extract_waypoint_data(args.entry, args.columns)
        if error:
            print(f"Error: {error}")
        
        final = {
            "waypoint_data": result
        }

        with open(f"{write_to_path}/{args.table}_{now.year}{now.month}{now.day}_{now.hour}{now.minute}{now.second}_{now_int}.yml", "w") as fd:
            yaml.dump(final, fd)

if __name__ == "__main__":
    main()
