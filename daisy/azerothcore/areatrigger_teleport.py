def sql_new_areatrigger_teleport(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            name = data['name'],
            target_map = data['target_map'],
            target_position_x = data['target_position_x'],
            target_position_y = data['target_position_y'],
            target_position_z = data['target_position_z'],
            target_orientation = data['target_orientation'],
        )