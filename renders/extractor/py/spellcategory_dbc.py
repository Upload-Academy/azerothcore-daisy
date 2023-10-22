def sql_new_spellcategory_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            flags = data['flags'],
        )