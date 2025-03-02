def sql_new_item_set_names_locale(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            locale = data['locale'],
            name = data['name'],
            verifiedbuild = data['verifiedbuild'],
        )