def sql_new_spell_ranks(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            first_spell_id = data['first_spell_id'],
            spell_id = data['spell_id'],
            rank = data['rank'],
        )