def sql_new_spell_proc_event(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            schoolmask = data['schoolmask'],
            spellfamilyname = data['spellfamilyname'],
            spellfamilymask0 = data['spellfamilymask0'],
            spellfamilymask1 = data['spellfamilymask1'],
            spellfamilymask2 = data['spellfamilymask2'],
            procflags = data['procflags'],
            procex = data['procex'],
            procphase = data['procphase'],
            ppmrate = data['ppmrate'],
            customchance = data['customchance'],
            cooldown = data['cooldown'],
        )