def sql_new_game_graveyard(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            map = data['map'],
            x = data['x'],
            y = data['y'],
            z = data['z'],
            comment = data['comment'],
        )