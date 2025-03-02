def sql_new_spell_linked_spell(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            spell_trigger = data['spell_trigger'],
            spell_effect = data['spell_effect'],
            type = data['type'],
            comment = data['comment'],
        )