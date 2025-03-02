def sql_new_exploration_basexp(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            level = data['level'],
            basexp = data['basexp'],
        )