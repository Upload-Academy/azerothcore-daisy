def sql_new_warden_checks(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            type = data['type'],
            data = data['data'],
            str = data['str'],
            address = data['address'],
            length = data['length'],
            result = data['result'],
            comment = data['comment'],
        )