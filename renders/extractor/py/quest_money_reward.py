def sql_new_quest_money_reward(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            level = data['level'],
            money0 = data['money0'],
            money1 = data['money1'],
            money2 = data['money2'],
            money3 = data['money3'],
            money4 = data['money4'],
            money5 = data['money5'],
            money6 = data['money6'],
            money7 = data['money7'],
            money8 = data['money8'],
            money9 = data['money9'],
        )