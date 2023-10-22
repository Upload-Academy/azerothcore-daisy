def sql_new_randproppoints_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            epic_1 = data['epic_1'],
            epic_2 = data['epic_2'],
            epic_3 = data['epic_3'],
            epic_4 = data['epic_4'],
            epic_5 = data['epic_5'],
            superior_1 = data['superior_1'],
            superior_2 = data['superior_2'],
            superior_3 = data['superior_3'],
            superior_4 = data['superior_4'],
            superior_5 = data['superior_5'],
            good_1 = data['good_1'],
            good_2 = data['good_2'],
            good_3 = data['good_3'],
            good_4 = data['good_4'],
            good_5 = data['good_5'],
        )