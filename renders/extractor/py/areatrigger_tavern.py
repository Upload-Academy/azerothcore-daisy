def sql_new_areatrigger_tavern(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            name = data['name'],
            faction = data['faction'],
        )