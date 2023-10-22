def sql_new_skill_perfect_item_template(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            spellid = data['spellid'],
            requiredspecialization = data['requiredspecialization'],
            perfectcreatechance = data['perfectcreatechance'],
            perfectitemtype = data['perfectitemtype'],
        )