def sql_new_creature_classlevelstats(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            level = data['level'],
            class = data['class'],
            basehp0 = data['basehp0'],
            basehp1 = data['basehp1'],
            basehp2 = data['basehp2'],
            basemana = data['basemana'],
            basearmor = data['basearmor'],
            attackpower = data['attackpower'],
            rangedattackpower = data['rangedattackpower'],
            damage_base = data['damage_base'],
            damage_exp1 = data['damage_exp1'],
            damage_exp2 = data['damage_exp2'],
            comment = data['comment'],
        )