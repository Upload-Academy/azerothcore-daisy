def sql_new_glyphproperties_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            spellid = data['spellid'],
            glyphslotflags = data['glyphslotflags'],
            spelliconid = data['spelliconid'],
        )