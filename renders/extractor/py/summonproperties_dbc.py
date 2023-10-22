def sql_new_summonproperties_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            control = data['control'],
            faction = data['faction'],
            title = data['title'],
            slot = data['slot'],
            flags = data['flags'],
        )