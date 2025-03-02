def sql_new_light_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            continentid = data['continentid'],
            x = data['x'],
            y = data['y'],
            z = data['z'],
            falloffstart = data['falloffstart'],
            falloffend = data['falloffend'],
            lightparamsid_1 = data['lightparamsid_1'],
            lightparamsid_2 = data['lightparamsid_2'],
            lightparamsid_3 = data['lightparamsid_3'],
            lightparamsid_4 = data['lightparamsid_4'],
            lightparamsid_5 = data['lightparamsid_5'],
            lightparamsid_6 = data['lightparamsid_6'],
            lightparamsid_7 = data['lightparamsid_7'],
            lightparamsid_8 = data['lightparamsid_8'],
        )