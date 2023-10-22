def sql_new_game_event_condition(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            evententry = data['evententry'],
            condition_id = data['condition_id'],
            req_num = data['req_num'],
            max_world_state_field = data['max_world_state_field'],
            done_world_state_field = data['done_world_state_field'],
            description = data['description'],
        )