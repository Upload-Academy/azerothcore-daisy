def sql_new_itemlimitcategory_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            name_lang_enus = data['name_lang_enus'],
            name_lang_engb = data['name_lang_engb'],
            name_lang_kokr = data['name_lang_kokr'],
            name_lang_frfr = data['name_lang_frfr'],
            name_lang_dede = data['name_lang_dede'],
            name_lang_encn = data['name_lang_encn'],
            name_lang_zhcn = data['name_lang_zhcn'],
            name_lang_entw = data['name_lang_entw'],
            name_lang_zhtw = data['name_lang_zhtw'],
            name_lang_eses = data['name_lang_eses'],
            name_lang_esmx = data['name_lang_esmx'],
            name_lang_ruru = data['name_lang_ruru'],
            name_lang_ptpt = data['name_lang_ptpt'],
            name_lang_ptbr = data['name_lang_ptbr'],
            name_lang_itit = data['name_lang_itit'],
            name_lang_unk = data['name_lang_unk'],
            name_lang_mask = data['name_lang_mask'],
            quantity = data['quantity'],
            flags = data['flags'],
        )