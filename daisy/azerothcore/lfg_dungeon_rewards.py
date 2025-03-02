def sql_new_lfg_dungeon_rewards(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            dungeonid = data['dungeonid'],
            maxlevel = data['maxlevel'],
            firstquestid = data['firstquestid'],
            otherquestid = data['otherquestid'],
        )