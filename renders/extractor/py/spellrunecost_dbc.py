def sql_new_spellrunecost_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            blood = data['blood'],
            unholy = data['unholy'],
            frost = data['frost'],
            runicpower = data['runicpower'],
        )