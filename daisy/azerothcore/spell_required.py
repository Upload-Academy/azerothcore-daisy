def sql_new_spell_required(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            spell_id = data['spell_id'],
            req_spell = data['req_spell'],
        )