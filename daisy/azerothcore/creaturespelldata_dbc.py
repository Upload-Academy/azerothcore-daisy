def sql_new_creaturespelldata_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            spells_1 = data['spells_1'],
            spells_2 = data['spells_2'],
            spells_3 = data['spells_3'],
            spells_4 = data['spells_4'],
            availability_1 = data['availability_1'],
            availability_2 = data['availability_2'],
            availability_3 = data['availability_3'],
            availability_4 = data['availability_4'],
        )