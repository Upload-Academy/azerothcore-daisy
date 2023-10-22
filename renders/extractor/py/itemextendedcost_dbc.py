def sql_new_itemextendedcost_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            honorpoints = data['honorpoints'],
            arenapoints = data['arenapoints'],
            arenabracket = data['arenabracket'],
            itemid_1 = data['itemid_1'],
            itemid_2 = data['itemid_2'],
            itemid_3 = data['itemid_3'],
            itemid_4 = data['itemid_4'],
            itemid_5 = data['itemid_5'],
            itemcount_1 = data['itemcount_1'],
            itemcount_2 = data['itemcount_2'],
            itemcount_3 = data['itemcount_3'],
            itemcount_4 = data['itemcount_4'],
            itemcount_5 = data['itemcount_5'],
            requiredarenarating = data['requiredarenarating'],
            itempurchasegroup = data['itempurchasegroup'],
        )