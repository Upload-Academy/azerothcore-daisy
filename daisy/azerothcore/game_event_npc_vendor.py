def sql_new_game_event_npc_vendor(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            evententry = data['evententry'],
            guid = data['guid'],
            slot = data['slot'],
            item = data['item'],
            maxcount = data['maxcount'],
            incrtime = data['incrtime'],
            extendedcost = data['extendedcost'],
        )