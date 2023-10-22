def sql_new_gemproperties_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            enchant_id = data['enchant_id'],
            maxcount_inv = data['maxcount_inv'],
            maxcount_item = data['maxcount_item'],
            type = data['type'],
        )