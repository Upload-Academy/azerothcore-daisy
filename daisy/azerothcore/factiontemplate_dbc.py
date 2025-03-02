def sql_new_factiontemplate_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            faction = data['faction'],
            flags = data['flags'],
            factiongroup = data['factiongroup'],
            friendgroup = data['friendgroup'],
            enemygroup = data['enemygroup'],
            enemies_1 = data['enemies_1'],
            enemies_2 = data['enemies_2'],
            enemies_3 = data['enemies_3'],
            enemies_4 = data['enemies_4'],
            friend_1 = data['friend_1'],
            friend_2 = data['friend_2'],
            friend_3 = data['friend_3'],
            friend_4 = data['friend_4'],
        )