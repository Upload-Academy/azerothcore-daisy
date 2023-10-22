def sql_new_game_event_creature(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            evententry = data['evententry'],
            guid = data['guid'],
        )