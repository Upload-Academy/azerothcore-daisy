def sql_new_page_text(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            text = data['text'],
            nextpageid = data['nextpageid'],
            verifiedbuild = data['verifiedbuild'],
        )