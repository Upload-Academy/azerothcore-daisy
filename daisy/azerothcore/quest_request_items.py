def sql_new_quest_request_items(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            emoteoncomplete = data['emoteoncomplete'],
            emoteonincomplete = data['emoteonincomplete'],
            completiontext = data['completiontext'],
            verifiedbuild = data['verifiedbuild'],
        )