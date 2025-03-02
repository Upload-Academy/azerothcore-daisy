def sql_new_gameobject_template_addon(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            faction = data['faction'],
            flags = data['flags'],
            mingold = data['mingold'],
            maxgold = data['maxgold'],
            artkit0 = data['artkit0'],
            artkit1 = data['artkit1'],
            artkit2 = data['artkit2'],
            artkit3 = data['artkit3'],
        )