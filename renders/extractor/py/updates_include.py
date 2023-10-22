def sql_new_updates_include(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            path = data['path'],
            state = data['state'],
        )