def sql_new_quest_greeting_locale(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            type = data['type'],
            locale = data['locale'],
            greeting = data['greeting'],
            verifiedbuild = data['verifiedbuild'],
        )