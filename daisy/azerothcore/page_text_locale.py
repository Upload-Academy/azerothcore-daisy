def sql_new_page_text_locale(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            locale = data['locale'],
            text = data['text'],
            verifiedbuild = data['verifiedbuild'],
        )