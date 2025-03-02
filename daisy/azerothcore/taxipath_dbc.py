def sql_new_taxipath_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            fromtaxinode = data['fromtaxinode'],
            totaxinode = data['totaxinode'],
            cost = data['cost'],
        )