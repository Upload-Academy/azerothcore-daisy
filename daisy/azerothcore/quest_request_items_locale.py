def sql_new_quest_request_items_locale(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            locale = data['locale'],
            completiontext = data['completiontext'],
            verifiedbuild = data['verifiedbuild'],
        )