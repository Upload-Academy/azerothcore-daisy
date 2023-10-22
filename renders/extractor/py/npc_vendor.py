def sql_new_npc_vendor(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            slot = data['slot'],
            item = data['item'],
            maxcount = data['maxcount'],
            incrtime = data['incrtime'],
            extendedcost = data['extendedcost'],
            verifiedbuild = data['verifiedbuild'],
        )