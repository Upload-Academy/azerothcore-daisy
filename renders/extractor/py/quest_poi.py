def sql_new_quest_poi(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            questid = data['questid'],
            id = data['id'],
            objectiveindex = data['objectiveindex'],
            mapid = data['mapid'],
            worldmapareaid = data['worldmapareaid'],
            floor = data['floor'],
            priority = data['priority'],
            flags = data['flags'],
            verifiedbuild = data['verifiedbuild'],
        )