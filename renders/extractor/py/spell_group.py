def sql_new_spell_group(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            spell_id = data['spell_id'],
            special_flag = data['special_flag'],
        )