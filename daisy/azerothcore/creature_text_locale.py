def sql_new_creature_text_locale(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            creatureid = data['creatureid'],
            groupid = data['groupid'],
            id = data['id'],
            locale = data['locale'],
            text = data['text'],
        )