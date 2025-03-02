def sql_new_spell_cooldown_overrides(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            recoverytime = data['recoverytime'],
            categoryrecoverytime = data['categoryrecoverytime'],
            startrecoverytime = data['startrecoverytime'],
            startrecoverycategory = data['startrecoverycategory'],
            comment = data['comment'],
        )