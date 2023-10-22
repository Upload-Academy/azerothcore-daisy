def sql_new_spellradius_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            radius = data['radius'],
            radiusperlevel = data['radiusperlevel'],
            radiusmax = data['radiusmax'],
        )