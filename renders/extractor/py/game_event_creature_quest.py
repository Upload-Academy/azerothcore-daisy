def sql_new_game_event_creature_quest(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            evententry = data['evententry'],
            id = data['id'],
            quest = data['quest'],
        )