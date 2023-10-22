def sql_new_cinematiccamera_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            model = data['model'],
            soundentry = data['soundentry'],
            locationx = data['locationx'],
            locationy = data['locationy'],
            locationz = data['locationz'],
            rotation = data['rotation'],
        )