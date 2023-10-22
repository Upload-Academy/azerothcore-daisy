def sql_new_playercreateinfo_item(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            race = data['race'],
            class = data['class'],
            itemid = data['itemid'],
            amount = data['amount'],
            note = data['note'],
        )