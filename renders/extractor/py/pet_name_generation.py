def sql_new_pet_name_generation(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            word = data['word'],
            entry = data['entry'],
            half = data['half'],
        )