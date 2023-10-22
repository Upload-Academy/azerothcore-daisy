def sql_new_graveyard_zone(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            ghostzone = data['ghostzone'],
            faction = data['faction'],
            comment = data['comment'],
        )