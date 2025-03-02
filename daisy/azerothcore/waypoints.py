def sql_new_waypoints(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            pointid = data['pointid'],
            position_x = data['position_x'],
            position_y = data['position_y'],
            position_z = data['position_z'],
            orientation = data['orientation'],
            delay = data['delay'],
            point_comment = data['point_comment'],
        )