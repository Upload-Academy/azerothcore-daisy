def sql_new_outdoorpvp_template(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            typeid = data['typeid'],
            scriptname = data['scriptname'],
            comment = data['comment'],
        )