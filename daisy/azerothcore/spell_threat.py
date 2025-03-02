def sql_new_spell_threat(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            flatmod = data['flatmod'],
            pctmod = data['pctmod'],
            appctmod = data['appctmod'],
        )