def sql_new_pvpdifficulty_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            mapid = data['mapid'],
            rangeindex = data['rangeindex'],
            minlevel = data['minlevel'],
            maxlevel = data['maxlevel'],
            difficulty = data['difficulty'],
        )