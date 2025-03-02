def sql_new_creature_template_model(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            creatureid = data['creatureid'],
            idx = data['idx'],
            creaturedisplayid = data['creaturedisplayid'],
            displayscale = data['displayscale'],
            probability = data['probability'],
            verifiedbuild = data['verifiedbuild'],
        )