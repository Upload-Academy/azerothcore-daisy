def sql_new_questsort_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            sortname_lang_enus = data['sortname_lang_enus'],
            sortname_lang_engb = data['sortname_lang_engb'],
            sortname_lang_kokr = data['sortname_lang_kokr'],
            sortname_lang_frfr = data['sortname_lang_frfr'],
            sortname_lang_dede = data['sortname_lang_dede'],
            sortname_lang_encn = data['sortname_lang_encn'],
            sortname_lang_zhcn = data['sortname_lang_zhcn'],
            sortname_lang_entw = data['sortname_lang_entw'],
            sortname_lang_zhtw = data['sortname_lang_zhtw'],
            sortname_lang_eses = data['sortname_lang_eses'],
            sortname_lang_esmx = data['sortname_lang_esmx'],
            sortname_lang_ruru = data['sortname_lang_ruru'],
            sortname_lang_ptpt = data['sortname_lang_ptpt'],
            sortname_lang_ptbr = data['sortname_lang_ptbr'],
            sortname_lang_itit = data['sortname_lang_itit'],
            sortname_lang_unk = data['sortname_lang_unk'],
            sortname_lang_mask = data['sortname_lang_mask'],
        )