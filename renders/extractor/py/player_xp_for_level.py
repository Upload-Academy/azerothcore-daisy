def sql_new_player_xp_for_level(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            level = data['level'],
            experience = data['experience'],
        )