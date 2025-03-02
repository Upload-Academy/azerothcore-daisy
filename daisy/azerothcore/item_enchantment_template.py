def sql_new_item_enchantment_template(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            ench = data['ench'],
            chance = data['chance'],
        )