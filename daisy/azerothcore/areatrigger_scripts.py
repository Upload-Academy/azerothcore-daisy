def sql_new_areatrigger_scripts(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            scriptname = data['scriptname'],
        )