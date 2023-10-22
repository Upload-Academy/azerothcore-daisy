def sql_new_creature_model_info(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            displayid = data['displayid'],
            boundingradius = data['boundingradius'],
            combatreach = data['combatreach'],
            gender = data['gender'],
            displayid_other_gender = data['displayid_other_gender'],
        )