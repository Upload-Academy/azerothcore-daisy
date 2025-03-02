def sql_new_overridespelldata_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            spells_1 = data['spells_1'],
            spells_2 = data['spells_2'],
            spells_3 = data['spells_3'],
            spells_4 = data['spells_4'],
            spells_5 = data['spells_5'],
            spells_6 = data['spells_6'],
            spells_7 = data['spells_7'],
            spells_8 = data['spells_8'],
            spells_9 = data['spells_9'],
            spells_10 = data['spells_10'],
            flags = data['flags'],
        )