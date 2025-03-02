def sql_new_game_event_prerequisite(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            evententry = data['evententry'],
            prerequisite_event = data['prerequisite_event'],
        )