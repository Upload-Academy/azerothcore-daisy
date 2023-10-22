def sql_new_spellcasttimes_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            base = data['base'],
            perlevel = data['perlevel'],
            minimum = data['minimum'],
        )