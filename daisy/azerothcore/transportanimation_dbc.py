def sql_new_transportanimation_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            transportid = data['transportid'],
            timeindex = data['timeindex'],
            posx = data['posx'],
            posy = data['posy'],
            posz = data['posz'],
            sequenceid = data['sequenceid'],
        )