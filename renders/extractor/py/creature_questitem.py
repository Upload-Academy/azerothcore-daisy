def sql_new_creature_questitem(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            creatureentry = data['creatureentry'],
            idx = data['idx'],
            itemid = data['itemid'],
            verifiedbuild = data['verifiedbuild'],
        )