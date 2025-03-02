def sql_new_gameobject_questitem(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            gameobjectentry = data['gameobjectentry'],
            idx = data['idx'],
            itemid = data['itemid'],
            verifiedbuild = data['verifiedbuild'],
        )