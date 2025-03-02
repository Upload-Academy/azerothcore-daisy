def sql_new_emotestext_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            name = data['name'],
            emoteid = data['emoteid'],
            emotetext_1 = data['emotetext_1'],
            emotetext_2 = data['emotetext_2'],
            emotetext_3 = data['emotetext_3'],
            emotetext_4 = data['emotetext_4'],
            emotetext_5 = data['emotetext_5'],
            emotetext_6 = data['emotetext_6'],
            emotetext_7 = data['emotetext_7'],
            emotetext_8 = data['emotetext_8'],
            emotetext_9 = data['emotetext_9'],
            emotetext_10 = data['emotetext_10'],
            emotetext_11 = data['emotetext_11'],
            emotetext_12 = data['emotetext_12'],
            emotetext_13 = data['emotetext_13'],
            emotetext_14 = data['emotetext_14'],
            emotetext_15 = data['emotetext_15'],
            emotetext_16 = data['emotetext_16'],
        )