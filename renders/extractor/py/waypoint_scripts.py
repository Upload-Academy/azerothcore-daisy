def sql_new_waypoint_scripts(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            delay = data['delay'],
            command = data['command'],
            datalong = data['datalong'],
            datalong2 = data['datalong2'],
            dataint = data['dataint'],
            x = data['x'],
            y = data['y'],
            z = data['z'],
            o = data['o'],
            guid = data['guid'],
        )