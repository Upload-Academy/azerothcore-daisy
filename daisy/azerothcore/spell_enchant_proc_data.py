def sql_new_spell_enchant_proc_data(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            customchance = data['customchance'],
            ppmchance = data['ppmchance'],
            procex = data['procex'],
            attributemask = data['attributemask'],
        )