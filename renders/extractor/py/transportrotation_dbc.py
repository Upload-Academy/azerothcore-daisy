def sql_new_transportrotation_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            gameobjectsid = data['gameobjectsid'],
            timeindex = data['timeindex'],
            rotx = data['rotx'],
            roty = data['roty'],
            rotz = data['rotz'],
            rotw = data['rotw'],
        )