def sql_new_player_class_stats(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            class = data['class'],
            level = data['level'],
            basehp = data['basehp'],
            basemana = data['basemana'],
            strength = data['strength'],
            agility = data['agility'],
            stamina = data['stamina'],
            intellect = data['intellect'],
            spirit = data['spirit'],
        )