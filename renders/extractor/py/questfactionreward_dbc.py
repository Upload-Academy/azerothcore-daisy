def sql_new_questfactionreward_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            difficulty_1 = data['difficulty_1'],
            difficulty_2 = data['difficulty_2'],
            difficulty_3 = data['difficulty_3'],
            difficulty_4 = data['difficulty_4'],
            difficulty_5 = data['difficulty_5'],
            difficulty_6 = data['difficulty_6'],
            difficulty_7 = data['difficulty_7'],
            difficulty_8 = data['difficulty_8'],
            difficulty_9 = data['difficulty_9'],
            difficulty_10 = data['difficulty_10'],
        )