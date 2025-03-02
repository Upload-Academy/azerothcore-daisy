def sql_new_item_set_names(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            name = data['name'],
            inventorytype = data['inventorytype'],
            verifiedbuild = data['verifiedbuild'],
        )