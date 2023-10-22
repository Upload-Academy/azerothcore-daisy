def sql_new_stableslotprices_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            cost = data['cost'],
        )