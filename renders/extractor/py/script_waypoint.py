def sql_new_script_waypoint(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            pointid = data['pointid'],
            location_x = data['location_x'],
            location_y = data['location_y'],
            location_z = data['location_z'],
            waittime = data['waittime'],
            point_comment = data['point_comment'],
        )