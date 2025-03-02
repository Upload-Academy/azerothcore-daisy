def sql_new_points_of_interest_locale(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            locale = data['locale'],
            name = data['name'],
            verifiedbuild = data['verifiedbuild'],
        )