def sql_new_game_tele(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            position_x = data['position_x'],
            position_y = data['position_y'],
            position_z = data['position_z'],
            orientation = data['orientation'],
            map = data['map'],
            name = data['name'],
        )