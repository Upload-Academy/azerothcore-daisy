def sql_new_waypoint_data(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            point = data['point'],
            position_x = data['position_x'],
            position_y = data['position_y'],
            position_z = data['position_z'],
            orientation = data['orientation'],
            delay = data['delay'],
            move_type = data['move_type'],
            action = data['action'],
            action_chance = data['action_chance'],
            wpguid = data['wpguid'],
        )