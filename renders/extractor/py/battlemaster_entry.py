def sql_new_battlemaster_entry(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            bg_template = data['bg_template'],
        )