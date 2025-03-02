def sql_new_currencytypes_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            itemid = data['itemid'],
            categoryid = data['categoryid'],
            bitindex = data['bitindex'],
        )