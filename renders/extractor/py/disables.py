def sql_new_disables(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            sourcetype = data['sourcetype'],
            entry = data['entry'],
            flags = data['flags'],
            params_0 = data['params_0'],
            params_1 = data['params_1'],
            comment = data['comment'],
        )