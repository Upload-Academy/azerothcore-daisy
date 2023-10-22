def sql_new_acore_string(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            content_default = data['content_default'],
            locale_kokr = data['locale_kokr'],
            locale_frfr = data['locale_frfr'],
            locale_dede = data['locale_dede'],
            locale_zhcn = data['locale_zhcn'],
            locale_zhtw = data['locale_zhtw'],
            locale_eses = data['locale_eses'],
            locale_esmx = data['locale_esmx'],
            locale_ruru = data['locale_ruru'],
        )