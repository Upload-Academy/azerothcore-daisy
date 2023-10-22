def sql_new_quest_template_locale(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            locale = data['locale'],
            title = data['title'],
            details = data['details'],
            objectives = data['objectives'],
            endtext = data['endtext'],
            completedtext = data['completedtext'],
            objectivetext1 = data['objectivetext1'],
            objectivetext2 = data['objectivetext2'],
            objectivetext3 = data['objectivetext3'],
            objectivetext4 = data['objectivetext4'],
            verifiedbuild = data['verifiedbuild'],
        )