def sql_new_player_race_stats(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            race = data['race'],
            strength = data['strength'],
            agility = data['agility'],
            stamina = data['stamina'],
            intellect = data['intellect'],
            spirit = data['spirit'],
        )