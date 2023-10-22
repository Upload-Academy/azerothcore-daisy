def sql_new_game_event_seasonal_questrelation(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            questid = data['questid'],
            evententry = data['evententry'],
        )