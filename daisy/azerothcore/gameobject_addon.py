def sql_new_gameobject_addon(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            guid = data['guid'],
            invisibilitytype = data['invisibilitytype'],
            invisibilityvalue = data['invisibilityvalue'],
        )