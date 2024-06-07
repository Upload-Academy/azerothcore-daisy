
import argparse
import os
import sys
import shutil
import ruamel.yaml
import importlib
import jinja2

from pathlib import Path

DEBUGGING = os.getenv("DEBUGGING") or False

yaml = ruamel.yaml.YAML()
yaml.preserve_quotes = True

templateLoader = jinja2.FileSystemLoader(searchpath="templates/")
templateEnv = jinja2.Environment(loader=templateLoader)

pack = None

def parse_yaml(pack, pack_constants = None, global_constants = True):
    results = ""

    if global_constants:
        with open("packs/_constants/constants.yaml", 'r') as fd:
            results += fd.read()

    if pack_constants:
        with open(pack_constants) as fd:
            results += fd.read()

    with open(pack, 'r') as fd:
        results += fd.read()

    return yaml.load(results)

def moves(data):
    if 'move' not in data:
        return False, "No move key in data"

    if len(data['move']) <= 0:
        return False, "No move(s) defined"

    for m in data['move']:
        final_file_path = make_pack_path(data, "moves")
        final_result = open(final_file_path, "a")
        template = templateEnv.get_template('sql_move_creature.j2')
        result = template.render(data=m)
        final_result.write(result)
        final_result.close()

    return True, None

def deletes(data):
    if 'delete' not in data:
        return False, "No delete key in data"

    if len(data['delete']) <= 0:
        return False, "No delete(s) defined"

    for x in data['delete']:
        final_file_path = make_pack_path(data, "deletes")
        final_result = open(final_file_path, "a")
        template = templateEnv.get_template('sql_delete_creature.j2')
        result = template.render(data=x)
        final_result.write(result)
        final_result.close()

    return True, None

def updates(data):
    if 'update' not in data:
        return False, "No update key in data"

    if len(data['update']) <= 0:
        return False, "No update(s) defined"

    for x in data['update']:
        final_file_path = make_pack_path(data, "updates")
        final_result = open(final_file_path, "a")
        template = templateEnv.get_template('generic_update.j2')
        result = template.render(data=x)
        final_result.write(result)
        final_result.close()

    return True, None


def tables(data):
    if 'tables' not in data:
        return False, "No tables key in data"
    
    if len(data['tables']) <= 0:
        return False, "No tables defined"

    for ti, tk in enumerate(data['tables']):
        for ei, entry in enumerate(data['tables'][tk]):
            final_file_path = make_pack_path(data, tk)
            final_result = open(final_file_path, "a")

            # Open the YAML file containing the table's column fields and their
            # default values
            defaults = parse_yaml(f"mappings/yaml/{tk}.yaml")

            # Dynamically load the Python module that contains the wrapper function around
            # the SQL template and the data structure it expects to see
            module = importlib.import_module(f"mappings.py.{tk}", package=None)

            # Get the function from the module
            sqlfunc = getattr(module, f"sql_new_{tk}")
            
            # Extract and merge the defaults with our values
            # (Our values "win", and override identical keys found in defaults)
            merged = {**defaults[tk], **entry}

            # And finally, write the .sql file, ready to be imported into the DB
            final_result.write(sqlfunc(merged, f"mappings/sql/{tk}.sql"))
            final_result.close()

    return True, None

def make_safe_name(name, version):
    safe_name = name.replace(' ', '_')
    safe_version = version.replace(' ', '_')
    return f"{safe_name}-{safe_version}"

def make_pack_path(data, filename, ext="sql"):
    safe_name = make_safe_name(data['pack']['name'], data['pack']['version'])
    p = f"{data['pack']['build']}/{safe_name}-{filename}.{ext}"
    return p

def find_code(name, path):
    all_packs = []
    
    for root, dirs, files in os.walk(path):
        for filename in files:
            if name in filename:
                all_packs.append(os.path.join(root, filename))
    
    return all_packs

def exit_on_missing_key(p, k):
    if not k in p:
        print(f'Error in "{p}": missing key "{k}"')
        sys.exit(1)

def new_pack(args):
    os.makedirs(f"packs/{args.new}/src")
    with open(f"packs/{args.new}/pack.yaml", "w") as fd:
        yaml.dump(
            {
                "daisy": {
                    "pack": {
                        "name": "New Pack",
                        "version": "1.0.0",
                        "author": "Some Awesome Person",
                        "homepage": "https://",
                        "source": f"packs/{args.new}/src",
                        "build": f"packs/{args.new}/output",
                    }
                }
            }, fd)

    sys.exit(0)

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-p", "--pack", help="Pack file", default="./pack.yaml")
    parser.add_argument("-n", "--new", help="Create a new Pack file: namespace/packname", required=False)
    args = parser.parse_args()

    if args.new:
        new_pack(args)
        sys.exit(0)

    with open(args.pack, 'r') as fd:
        global pack
        pack = yaml.load(fd)

    exit_on_missing_key(pack, 'daisy')
    exit_on_missing_key(pack['daisy'], 'pack')

    root = pack['daisy']['pack']
    
    exit_on_missing_key(root, 'name')
    exit_on_missing_key(root, 'version')
    exit_on_missing_key(root, 'author')
    exit_on_missing_key(root, 'homepage')
    exit_on_missing_key(root, 'source')
    exit_on_missing_key(root, 'build')

    build = root['build']
    if os.path.exists(build):
        shutil.rmtree(build, ignore_errors=True)
        os.makedirs(build)
    else:
        os.makedirs(build)

    source = root['source']

    files = find_code(".yaml", source)

    # Do we have a "_constants.yaml" file in the pack? If so
    # get the path from the 
    pack_globals = [x for x in files if "_constants.yaml" in x]
    if len(pack_globals) == 0:
        pack_globals = None
    else:
        pack_globals = pack_globals[0]
    
    for code in files:
        if "_constants.yaml" in code:
            # This file is loaded another way
            # See below
            continue 

        parsed  = None
        if pack_globals:
            parsed = parse_yaml(code, pack_globals)
        else:
            parsed = parse_yaml(code)

        parsed['pack'] = root

        result, err = deletes(parsed)
        if not result:
            # print(f"Warning in deletes() for '{pack}': {err}")
            pass
        
        result, err = moves(parsed)
        if not result:
            # print(f"Warning in moves() for '{pack}': {err}")
            pass

        result, err = updates(parsed)
        if not result:
            # print(f"Warning in updates() for '{pack}': {err}")
            pass

        result, err = tables(parsed)
        if not result:
            # print(f"Warning in tables() for '{pack}': {err}")
            pass

    sql_files = find_code(".sql", source)
    for sql_code in sql_files:
        safe_name = make_safe_name(root['name'], root['version'])
        basename = os.path.basename(sql_code)
        dst = f"{build}/{safe_name}-{basename}"
        shutil.copyfile(sql_code, f"{dst}")

    lua_files = find_code(".lua", source)
    for lua_code in lua_files:
        safe_name = make_safe_name(root['name'], root['version'])
        basename = os.path.basename(lua_code)
        dst = f"{build}/lua_scripts/{safe_name}-{basename}"
        script_path = f"{build}/lua_scripts"
        if not os.path.exists(script_path): os.makedirs(script_path)
        shutil.copyfile(lua_code, f"{dst}")

    

if __name__ == "__main__":
    main()
