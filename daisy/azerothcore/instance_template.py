def sql_new_instance_template(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            map = data['map'],
            parent = data['parent'],
            script = data['script'],
            allowmount = data['allowmount'],
        )