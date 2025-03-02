def sql_new_pool_quest(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            pool_entry = data['pool_entry'],
            description = data['description'],
        )