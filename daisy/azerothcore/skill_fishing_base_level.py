def sql_new_skill_fishing_base_level(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            skill = data['skill'],
        )