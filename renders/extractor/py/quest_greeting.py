def sql_new_quest_greeting(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            type = data['type'],
            greetemotetype = data['greetemotetype'],
            greetemotedelay = data['greetemotedelay'],
            greeting = data['greeting'],
            verifiedbuild = data['verifiedbuild'],
        )