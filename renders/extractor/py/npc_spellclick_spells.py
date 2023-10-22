def sql_new_npc_spellclick_spells(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            npc_entry = data['npc_entry'],
            spell_id = data['spell_id'],
            cast_flags = data['cast_flags'],
            user_type = data['user_type'],
        )