def sql_new_playercreateinfo(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            race = data['race'],
            class = data['class'],
            map = data['map'],
            zone = data['zone'],
            position_x = data['position_x'],
            position_y = data['position_y'],
            position_z = data['position_z'],
            orientation = data['orientation'],
        )