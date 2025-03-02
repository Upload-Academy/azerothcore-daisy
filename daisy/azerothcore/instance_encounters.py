def sql_new_instance_encounters(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            credittype = data['credittype'],
            creditentry = data['creditentry'],
            lastencounterdungeon = data['lastencounterdungeon'],
            comment = data['comment'],
        )