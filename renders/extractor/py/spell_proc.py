def sql_new_spell_proc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            spellid = data['spellid'],
            schoolmask = data['schoolmask'],
            spellfamilyname = data['spellfamilyname'],
            spellfamilymask0 = data['spellfamilymask0'],
            spellfamilymask1 = data['spellfamilymask1'],
            spellfamilymask2 = data['spellfamilymask2'],
            procflags = data['procflags'],
            spelltypemask = data['spelltypemask'],
            spellphasemask = data['spellphasemask'],
            hitmask = data['hitmask'],
            attributesmask = data['attributesmask'],
            procsperminute = data['procsperminute'],
            chance = data['chance'],
            cooldown = data['cooldown'],
            charges = data['charges'],
        )