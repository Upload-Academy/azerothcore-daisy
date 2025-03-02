def sql_new_spell_pet_auras(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            spell = data['spell'],
            effectid = data['effectid'],
            pet = data['pet'],
            aura = data['aura'],
        )