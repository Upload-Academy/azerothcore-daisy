def sql_new_creature_questender(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            quest = data['quest'],
        )