def sql_new_quest_poi_points(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            questid = data['questid'],
            idx1 = data['idx1'],
            idx2 = data['idx2'],
            x = data['x'],
            y = data['y'],
            verifiedbuild = data['verifiedbuild'],
        )