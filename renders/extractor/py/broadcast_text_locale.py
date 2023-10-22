def sql_new_broadcast_text_locale(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            locale = data['locale'],
            maletext = data['maletext'],
            femaletext = data['femaletext'],
            verifiedbuild = data['verifiedbuild'],
        )