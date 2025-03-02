def sql_new_playercreateinfo_skills(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            racemask = data['racemask'],
            classmask = data['classmask'],
            skill = data['skill'],
            rank = data['rank'],
            comment = data['comment'],
        )