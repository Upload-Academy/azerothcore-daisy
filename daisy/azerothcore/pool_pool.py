def sql_new_pool_pool(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            pool_id = data['pool_id'],
            mother_pool = data['mother_pool'],
            chance = data['chance'],
            description = data['description'],
        )