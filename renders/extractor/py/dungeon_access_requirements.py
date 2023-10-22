def sql_new_dungeon_access_requirements(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            dungeon_access_id = data['dungeon_access_id'],
            requirement_type = data['requirement_type'],
            requirement_id = data['requirement_id'],
            requirement_note = data['requirement_note'],
            faction = data['faction'],
            priority = data['priority'],
            leader_only = data['leader_only'],
            comment = data['comment'],
        )