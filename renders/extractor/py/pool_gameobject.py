def sql_new_pool_gameobject(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            guid = data['guid'],
            pool_entry = data['pool_entry'],
            chance = data['chance'],
            description = data['description'],
        )