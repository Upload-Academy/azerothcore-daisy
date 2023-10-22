def sql_new_spell_loot_template(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            item = data['item'],
            reference = data['reference'],
            chance = data['chance'],
            questrequired = data['questrequired'],
            lootmode = data['lootmode'],
            groupid = data['groupid'],
            mincount = data['mincount'],
            maxcount = data['maxcount'],
            comment = data['comment'],
        )