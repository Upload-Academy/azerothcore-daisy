def sql_new_teamcontributionpoints_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            data = data['data'],
        )