def sql_new_creature_formations(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            leaderguid = data['leaderguid'],
            memberguid = data['memberguid'],
            dist = data['dist'],
            angle = data['angle'],
            groupai = data['groupai'],
            point_1 = data['point_1'],
            point_2 = data['point_2'],
        )