def sql_new_creature_equip_template(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            creatureid = data['creatureid'],
            id = data['id'],
            itemid1 = data['itemid1'],
            itemid2 = data['itemid2'],
            itemid3 = data['itemid3'],
            verifiedbuild = data['verifiedbuild'],
        )