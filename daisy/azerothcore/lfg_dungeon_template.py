def sql_new_lfg_dungeon_template(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            dungeonid = data['dungeonid'],
            name = data['name'],
            position_x = data['position_x'],
            position_y = data['position_y'],
            position_z = data['position_z'],
            orientation = data['orientation'],
            verifiedbuild = data['verifiedbuild'],
        )