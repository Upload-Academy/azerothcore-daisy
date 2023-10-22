def sql_new_areatrigger(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            map = data['map'],
            x = data['x'],
            y = data['y'],
            z = data['z'],
            radius = data['radius'],
            length = data['length'],
            width = data['width'],
            height = data['height'],
            orientation = data['orientation'],
        )