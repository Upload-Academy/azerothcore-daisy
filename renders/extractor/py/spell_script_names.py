def sql_new_spell_script_names(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            spell_id = data['spell_id'],
            scriptname = data['scriptname'],
        )