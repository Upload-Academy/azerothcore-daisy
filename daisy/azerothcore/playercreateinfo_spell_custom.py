def sql_new_playercreateinfo_spell_custom(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            racemask = data['racemask'],
            classmask = data['classmask'],
            spell = data['spell'],
            note = data['note'],
        )