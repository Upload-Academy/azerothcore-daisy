def sql_new_points_of_interest(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            positionx = data['positionx'],
            positiony = data['positiony'],
            icon = data['icon'],
            flags = data['flags'],
            importance = data['importance'],
            name = data['name'],
        )