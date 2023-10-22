def sql_new_gossip_menu_option_locale(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            menuid = data['menuid'],
            optionid = data['optionid'],
            locale = data['locale'],
            optiontext = data['optiontext'],
            boxtext = data['boxtext'],
        )