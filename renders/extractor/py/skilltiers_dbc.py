def sql_new_skilltiers_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            cost_1 = data['cost_1'],
            cost_2 = data['cost_2'],
            cost_3 = data['cost_3'],
            cost_4 = data['cost_4'],
            cost_5 = data['cost_5'],
            cost_6 = data['cost_6'],
            cost_7 = data['cost_7'],
            cost_8 = data['cost_8'],
            cost_9 = data['cost_9'],
            cost_10 = data['cost_10'],
            cost_11 = data['cost_11'],
            cost_12 = data['cost_12'],
            cost_13 = data['cost_13'],
            cost_14 = data['cost_14'],
            cost_15 = data['cost_15'],
            cost_16 = data['cost_16'],
            value_1 = data['value_1'],
            value_2 = data['value_2'],
            value_3 = data['value_3'],
            value_4 = data['value_4'],
            value_5 = data['value_5'],
            value_6 = data['value_6'],
            value_7 = data['value_7'],
            value_8 = data['value_8'],
            value_9 = data['value_9'],
            value_10 = data['value_10'],
            value_11 = data['value_11'],
            value_12 = data['value_12'],
            value_13 = data['value_13'],
            value_14 = data['value_14'],
            value_15 = data['value_15'],
            value_16 = data['value_16'],
        )