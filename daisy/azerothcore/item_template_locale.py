def sql_new_item_template_locale(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            locale = data['locale'],
            name = data['name'],
            description = data['description'],
            verifiedbuild = data['verifiedbuild'],
        )