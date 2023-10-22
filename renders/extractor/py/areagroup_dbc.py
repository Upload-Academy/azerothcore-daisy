def sql_new_areagroup_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            areaid_1 = data['areaid_1'],
            areaid_2 = data['areaid_2'],
            areaid_3 = data['areaid_3'],
            areaid_4 = data['areaid_4'],
            areaid_5 = data['areaid_5'],
            areaid_6 = data['areaid_6'],
            nextareaid = data['nextareaid'],
        )