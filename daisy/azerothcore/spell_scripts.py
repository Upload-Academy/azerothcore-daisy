def sql_new_spell_scripts(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            effindex = data['effindex'],
            delay = data['delay'],
            command = data['command'],
            datalong = data['datalong'],
            datalong2 = data['datalong2'],
            dataint = data['dataint'],
            x = data['x'],
            y = data['y'],
            z = data['z'],
            o = data['o'],
        )