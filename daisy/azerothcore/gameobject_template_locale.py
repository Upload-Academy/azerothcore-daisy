def sql_new_gameobject_template_locale(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            locale = data['locale'],
            name = data['name'],
            castbarcaption = data['castbarcaption'],
            verifiedbuild = data['verifiedbuild'],
        )