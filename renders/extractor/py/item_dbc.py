def sql_new_item_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            classid = data['classid'],
            subclassid = data['subclassid'],
            sound_override_subclassid = data['sound_override_subclassid'],
            material = data['material'],
            displayinfoid = data['displayinfoid'],
            inventorytype = data['inventorytype'],
            sheathetype = data['sheathetype'],
        )