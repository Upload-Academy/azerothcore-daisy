def sql_new_creature_template_locale(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            locale = data['locale'],
            name = data['name'],
            title = data['title'],
            verifiedbuild = data['verifiedbuild'],
        )