def sql_new_gossip_menu(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            menuid = data['menuid'],
            textid = data['textid'],
        )