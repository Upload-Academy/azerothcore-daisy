def sql_new_creature_template_resistance(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            creatureid = data['creatureid'],
            school = data['school'],
            resistance = data['resistance'],
            verifiedbuild = data['verifiedbuild'],
        )