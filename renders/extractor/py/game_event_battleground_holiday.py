def sql_new_game_event_battleground_holiday(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            evententry = data['evententry'],
            bgflag = data['bgflag'],
        )