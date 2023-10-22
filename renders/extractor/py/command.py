def sql_new_command(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            name = data['name'],
            security = data['security'],
            help = data['help'],
        )