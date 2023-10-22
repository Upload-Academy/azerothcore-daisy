def sql_new_game_event(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            evententry = data['evententry'],
            start_time = data['start_time'],
            end_time = data['end_time'],
            occurence = data['occurence'],
            length = data['length'],
            holiday = data['holiday'],
            holidaystage = data['holidaystage'],
            description = data['description'],
            world_event = data['world_event'],
            announce = data['announce'],
        )