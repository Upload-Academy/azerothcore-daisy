def sql_new_spell_custom_attr(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            spell_id = data['spell_id'],
            attributes = data['attributes'],
        )