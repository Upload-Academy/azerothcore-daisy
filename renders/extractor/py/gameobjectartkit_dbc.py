def sql_new_gameobjectartkit_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            texture_1 = data['texture_1'],
            texture_2 = data['texture_2'],
            texture_3 = data['texture_3'],
            attach_model_1 = data['attach_model_1'],
            attach_model_2 = data['attach_model_2'],
            attach_model_3 = data['attach_model_3'],
            attach_model_4 = data['attach_model_4'],
        )