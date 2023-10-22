def sql_new_cinematicsequences_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            soundid = data['soundid'],
            camera_1 = data['camera_1'],
            camera_2 = data['camera_2'],
            camera_3 = data['camera_3'],
            camera_4 = data['camera_4'],
            camera_5 = data['camera_5'],
            camera_6 = data['camera_6'],
            camera_7 = data['camera_7'],
            camera_8 = data['camera_8'],
        )