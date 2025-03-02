def sql_new_player_factionchange_reputations(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            alliance_id = data['alliance_id'],
            horde_id = data['horde_id'],
        )