
import os
import ruamel.yaml
import importlib

DEBUGGING = os.getenv("DEBUGGING") or False

yaml = ruamel.yaml.YAML()
yaml.preserve_quotes = True

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

        test = open('test.yaml', 'w')
        test.write(results)

        return yaml.load(results)
    
    with open(this, 'r') as fd:
        return yaml.load(fd.read())

def tables(data):
    if 'meta' not in data:
        return False, "No meta key in data"

    if 'tables' not in data:
        return False, "No tables key in data"
    
    if len(data['tables']) <= 0:
        return False, "No tables defined"

    for ti, tk in enumerate(data['tables']):
        for ei, entry in enumerate(data['tables'][tk]):
            # Open file we're going to write the SQL to
            final_result = open(f"{config['daisy']['output_to']}/{data['meta']['pack']}-{data['meta']['version']}-{tk}.sql", "w")

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

            print(merged)

            # And finally, write the .sql file, ready to be imported into the DB
            final_result.write(sqlfunc(merged, f"{config['daisy']['templates']}/sql/{tk}.sql"))
            final_result.close()

    return True, None

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
    packs = find_packs(".yaml", "./packs")
    for pack in packs:
        data  = parse_yaml(pack, constants=True)
        result, err = tables(data)
        if not result:
            print(f"Error in tables(): {err}")

if __name__ == "__main__":
    main()
