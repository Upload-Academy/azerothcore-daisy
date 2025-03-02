def sql_new_pet_name_generation_locale(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            locale = data['locale'],
            word = data['word'],
            entry = data['entry'],
            half = data['half'],
        )