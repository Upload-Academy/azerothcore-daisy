def sql_new_skillraceclassinfo_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            skillid = data['skillid'],
            racemask = data['racemask'],
            classmask = data['classmask'],
            flags = data['flags'],
            minlevel = data['minlevel'],
            skilltierid = data['skilltierid'],
            skillcostindex = data['skillcostindex'],
        )