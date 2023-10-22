def sql_new_gossip_menu_option(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            menuid = data['menuid'],
            optionid = data['optionid'],
            optionicon = data['optionicon'],
            optiontext = data['optiontext'],
            optionbroadcasttextid = data['optionbroadcasttextid'],
            optiontype = data['optiontype'],
            optionnpcflag = data['optionnpcflag'],
            actionmenuid = data['actionmenuid'],
            actionpoiid = data['actionpoiid'],
            boxcoded = data['boxcoded'],
            boxmoney = data['boxmoney'],
            boxtext = data['boxtext'],
            boxbroadcasttextid = data['boxbroadcasttextid'],
            verifiedbuild = data['verifiedbuild'],
        )