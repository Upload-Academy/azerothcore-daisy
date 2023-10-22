def sql_new_player_factionchange_spells(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            alliance_id = data['alliance_id'],
            alliance_comment = data['alliance_comment'],
            horde_id = data['horde_id'],
            horde_comment = data['horde_comment'],
        )