def sql_new_transports(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            guid = data['guid'],
            entry = data['entry'],
            name = data['name'],
            scriptname = data['scriptname'],
        )