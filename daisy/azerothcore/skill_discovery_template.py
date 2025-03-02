def sql_new_skill_discovery_template(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            spellid = data['spellid'],
            reqspell = data['reqspell'],
            reqskillvalue = data['reqskillvalue'],
            chance = data['chance'],
        )