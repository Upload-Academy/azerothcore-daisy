def sql_new_spelldifficulty_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            difficultyspellid_1 = data['difficultyspellid_1'],
            difficultyspellid_2 = data['difficultyspellid_2'],
            difficultyspellid_3 = data['difficultyspellid_3'],
            difficultyspellid_4 = data['difficultyspellid_4'],
        )