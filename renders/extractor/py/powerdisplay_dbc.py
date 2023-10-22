def sql_new_powerdisplay_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            actualtype = data['actualtype'],
            globalstringbasetag = data['globalstringbasetag'],
            red = data['red'],
            green = data['green'],
            blue = data['blue'],
        )