def sql_new_dungeon_access_template(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            map_id = data['map_id'],
            difficulty = data['difficulty'],
            min_level = data['min_level'],
            max_level = data['max_level'],
            min_avg_item_level = data['min_avg_item_level'],
            comment = data['comment'],
        )