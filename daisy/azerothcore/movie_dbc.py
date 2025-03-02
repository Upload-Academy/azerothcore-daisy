def sql_new_movie_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            filename = data['filename'],
            volume = data['volume'],
        )