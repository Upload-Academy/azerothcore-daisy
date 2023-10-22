def sql_new_playercreateinfo_action(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            race = data['race'],
            class = data['class'],
            button = data['button'],
            action = data['action'],
            type = data['type'],
        )