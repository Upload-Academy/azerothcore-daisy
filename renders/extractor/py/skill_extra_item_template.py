def sql_new_skill_extra_item_template(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            spellid = data['spellid'],
            requiredspecialization = data['requiredspecialization'],
            additionalcreatechance = data['additionalcreatechance'],
            additionalmaxnum = data['additionalmaxnum'],
        )