def sql_new_game_event_pool(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            evententry = data['evententry'],
            pool_entry = data['pool_entry'],
        )