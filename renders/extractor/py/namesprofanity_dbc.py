def sql_new_namesprofanity_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            pattern = data['pattern'],
            languagueid = data['languagueid'],
        )