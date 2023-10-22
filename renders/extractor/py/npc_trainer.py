def sql_new_npc_trainer(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            spellid = data['spellid'],
            moneycost = data['moneycost'],
            reqskillline = data['reqskillline'],
            reqskillrank = data['reqskillrank'],
            reqlevel = data['reqlevel'],
            reqspell = data['reqspell'],
        )