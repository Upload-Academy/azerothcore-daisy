def sql_new_spell_area(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            spell = data['spell'],
            area = data['area'],
            quest_start = data['quest_start'],
            quest_end = data['quest_end'],
            aura_spell = data['aura_spell'],
            racemask = data['racemask'],
            gender = data['gender'],
            autocast = data['autocast'],
            quest_start_status = data['quest_start_status'],
            quest_end_status = data['quest_end_status'],
        )