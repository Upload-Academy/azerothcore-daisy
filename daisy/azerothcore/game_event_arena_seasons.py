def sql_new_game_event_arena_seasons(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            evententry = data['evententry'],
            season = data['season'],
        )