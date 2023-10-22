def sql_new_game_event_model_equip(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            evententry = data['evententry'],
            guid = data['guid'],
            modelid = data['modelid'],
            equipment_id = data['equipment_id'],
        )