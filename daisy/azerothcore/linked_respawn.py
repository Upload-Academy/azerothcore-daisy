def sql_new_linked_respawn(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            guid = data['guid'],
            linkedguid = data['linkedguid'],
            linktype = data['linktype'],
        )