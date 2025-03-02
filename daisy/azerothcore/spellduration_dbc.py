def sql_new_spellduration_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            duration = data['duration'],
            durationperlevel = data['durationperlevel'],
            maxduration = data['maxduration'],
        )