def sql_new_game_event_quest_condition(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            evententry = data['evententry'],
            quest = data['quest'],
            condition_id = data['condition_id'],
            num = data['num'],
        )