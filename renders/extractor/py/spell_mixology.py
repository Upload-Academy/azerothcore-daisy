def sql_new_spell_mixology(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            pctmod = data['pctmod'],
        )