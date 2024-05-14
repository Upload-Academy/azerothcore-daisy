
import os
import shutil
import ruamel.yaml
import importlib
import jinja2

DEBUGGING = os.getenv("DEBUGGING") or False

yaml = ruamel.yaml.YAML()
yaml.preserve_quotes = True

templateLoader = jinja2.FileSystemLoader(searchpath="./templates")
templateEnv = jinja2.Environment(loader=templateLoader)

config = None
with open('config.yaml', 'r') as fd:
    config = yaml.load(fd)

def parse_yaml(this, constants=False):
    if constants:
        results = None
        with open('packs/_constants/constants.yaml', 'r') as fd:
            results = fd.read()

        with open(this, 'r') as fd:
            results += fd.read()

        return yaml.load(results)
    
    with open(this, 'r') as fd:
        return yaml.load(fd.read())

def moves(data):
    if 'meta' not in data:
        return False, "No meta key in data"
    
    if 'move' not in data:
        return False, "No move key in data"

    if len(data['move']) <= 0:
        return False, "No move(s) defined"

    for m in data['move']:
        final_file_path = f"{config['daisy']['output_to']}/{data['meta']['pack']}-{data['meta']['version']}-moves.sql"
        final_result = open(final_file_path, "a")
        template = templateEnv.get_template('sql_move_creature.j2')
        result = template.render(data=m)
        final_result.write(result)
        final_result.close()

    return True, None

def deletes(data):
    if 'meta' not in data:
        return False, "No meta key in data"
    
    if 'delete' not in data:
        return False, "No delete key in data"

    if len(data['delete']) <= 0:
        return False, "No delete(s) defined"

    for x in data['delete']:
        final_file_path = f"{config['daisy']['output_to']}/{data['meta']['pack']}-{data['meta']['version']}-deletes.sql"
        final_result = open(final_file_path, "a")
        template = templateEnv.get_template('sql_delete_creature.j2')
        result = template.render(data=x)
        final_result.write(result)
        final_result.close()

    return True, None

def updates(data):
    if 'meta' not in data:
        return False, "No meta key in data"
    
    if 'update' not in data:
        return False, "No update key in data"

    if len(data['update']) <= 0:
        return False, "No update(s) defined"

    for x in data['update']:
        final_file_path = f"{make_pack_path(data)}/updates.sql"
        final_result = open(final_file_path, "a")
        template = templateEnv.get_template('generic_update.j2')
        result = template.render(data=x)
        final_result.write(result)
        final_result.close()

    return True, None


def tables(data):
    if 'meta' not in data:
        return False, "No meta key in data"

    if 'tables' not in data:
        return False, "No tables key in data"
    
    if len(data['tables']) <= 0:
        return False, "No tables defined"

    for ti, tk in enumerate(data['tables']):
        for ei, entry in enumerate(data['tables'][tk]):
            final_file_path = f"{make_pack_path(data)}/{tk}.sql"
            final_result = open(final_file_path, "a")

            # Open the YAML file containing the table's column fields and their
            # default values
            defaults = parse_yaml(f"{config['daisy']['templates']}/yaml/{tk}.yaml")

            # Dynamically load the Python module that contains the wrapper function around
            # the SQL template and the data structure it expects to see
            module = importlib.import_module(f"{config['daisy']['templates'].replace('/', '.')}.py.{tk}", package=None)

            # Get the function from the module
            sqlfunc = getattr(module, f"sql_new_{tk}")
            
            # Extract and merge the defaults with our values
            # (Our values "win", and override identical keys found in defaults)
            merged = {**defaults[tk], **entry}

            # And finally, write the .sql file, ready to be imported into the DB
            final_result.write(sqlfunc(merged, f"{config['daisy']['templates']}/sql/{tk}.sql"))
            final_result.close()

    return True, None

def make_pack_path(data):
    p = f"{config['daisy']['output_to']}/{data['meta']['pack']}/{data['meta']['version']}"
    if not os.path.exists(p):
        os.makedirs(p)
    return p

def find_packs(name, path):
    all_packs = []
    
    for root, dirs, files in os.walk(path):
        if root == "./packs/_constants":
            continue 

        for filename in files:
            # if filename == "constants.yaml":
            #     continue

            if name in filename:
                all_packs.append(os.path.join(root, filename))
    
    return all_packs

def main():
    # We have to delete any and all previously generated SQL files
    # otherwise we'll open then for appending, and they will just
    # keep growing. We want them to be _replaced_
    shutil.rmtree(f"{config['daisy']['output_to']}/", ignore_errors=True)
    os.mkdir(config['daisy']['output_to'])

    packs = find_packs(".yaml", "./packs")
    for pack in packs:
        data  = parse_yaml(pack, constants=True)
        
        result, err = deletes(data)
        if not result:
            # print(f"Warning in deletes() for '{pack}': {err}")
            pass
        
        result, err = moves(data)
        if not result:
            # print(f"Warning in moves() for '{pack}': {err}")
            pass

        result, err = updates(data)
        if not result:
            # print(f"Warning in moves() for '{pack}': {err}")
            pass

        result, err = tables(data)
        if not result:
            # print(f"Warning in tables() for '{pack}': {err}")
            pass

if __name__ == "__main__":
    main()
