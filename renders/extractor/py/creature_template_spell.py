def sql_new_creature_template_spell(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            creatureid = data['creatureid'],
            index = data['index'],
            spell = data['spell'],
            verifiedbuild = data['verifiedbuild'],
        )