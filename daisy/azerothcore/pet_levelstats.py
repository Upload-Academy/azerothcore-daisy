def sql_new_pet_levelstats(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            creature_entry = data['creature_entry'],
            level = data['level'],
            hp = data['hp'],
            mana = data['mana'],
            armor = data['armor'],
            str = data['str'],
            agi = data['agi'],
            sta = data['sta'],
            inte = data['inte'],
            spi = data['spi'],
            min_dmg = data['min_dmg'],
            max_dmg = data['max_dmg'],
        )