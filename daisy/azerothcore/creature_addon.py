def sql_new_creature_addon(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            guid = data['guid'],
            path_id = data['path_id'],
            mount = data['mount'],
            bytes1 = data['bytes1'],
            bytes2 = data['bytes2'],
            emote = data['emote'],
            visibilitydistancetype = data['visibilitydistancetype'],
            auras = data['auras'],
        )