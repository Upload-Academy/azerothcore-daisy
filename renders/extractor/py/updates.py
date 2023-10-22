def sql_new_updates(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            name = data['name'],
            hash = data['hash'],
            state = data['state'],
            timestamp = data['timestamp'],
            speed = data['speed'],
        )