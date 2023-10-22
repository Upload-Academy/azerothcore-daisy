def sql_new_pool_template(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            max_limit = data['max_limit'],
            description = data['description'],
        )