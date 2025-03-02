def sql_new_skilllineability_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            skillline = data['skillline'],
            spell = data['spell'],
            racemask = data['racemask'],
            classmask = data['classmask'],
            excluderace = data['excluderace'],
            excludeclass = data['excludeclass'],
            minskilllinerank = data['minskilllinerank'],
            supercededbyspell = data['supercededbyspell'],
            acquiremethod = data['acquiremethod'],
            trivialskilllinerankhigh = data['trivialskilllinerankhigh'],
            trivialskilllineranklow = data['trivialskilllineranklow'],
            characterpoints_1 = data['characterpoints_1'],
            characterpoints_2 = data['characterpoints_2'],
        )