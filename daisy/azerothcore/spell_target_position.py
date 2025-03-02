def sql_new_spell_target_position(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            effectindex = data['effectindex'],
            mapid = data['mapid'],
            positionx = data['positionx'],
            positiony = data['positiony'],
            positionz = data['positionz'],
            orientation = data['orientation'],
            verifiedbuild = data['verifiedbuild'],
        )