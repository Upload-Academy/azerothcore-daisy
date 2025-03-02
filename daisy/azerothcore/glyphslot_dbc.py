def sql_new_glyphslot_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            type = data['type'],
            tooltip = data['tooltip'],
        )