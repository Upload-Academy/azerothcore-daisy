def sql_new_creature_summon_groups(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            summonerid = data['summonerid'],
            summonertype = data['summonertype'],
            groupid = data['groupid'],
            entry = data['entry'],
            position_x = data['position_x'],
            position_y = data['position_y'],
            position_z = data['position_z'],
            orientation = data['orientation'],
            summontype = data['summontype'],
            summontime = data['summontime'],
            comment = data['comment'],
        )