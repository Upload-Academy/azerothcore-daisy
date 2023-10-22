def sql_new_game_weather(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            zone = data['zone'],
            spring_rain_chance = data['spring_rain_chance'],
            spring_snow_chance = data['spring_snow_chance'],
            spring_storm_chance = data['spring_storm_chance'],
            summer_rain_chance = data['summer_rain_chance'],
            summer_snow_chance = data['summer_snow_chance'],
            summer_storm_chance = data['summer_storm_chance'],
            fall_rain_chance = data['fall_rain_chance'],
            fall_snow_chance = data['fall_snow_chance'],
            fall_storm_chance = data['fall_storm_chance'],
            winter_rain_chance = data['winter_rain_chance'],
            winter_snow_chance = data['winter_snow_chance'],
            winter_storm_chance = data['winter_storm_chance'],
            scriptname = data['scriptname'],
        )