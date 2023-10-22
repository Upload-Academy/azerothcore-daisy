def sql_new_broadcast_text(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            languageid = data['languageid'],
            maletext = data['maletext'],
            femaletext = data['femaletext'],
            emoteid1 = data['emoteid1'],
            emoteid2 = data['emoteid2'],
            emoteid3 = data['emoteid3'],
            emotedelay1 = data['emotedelay1'],
            emotedelay2 = data['emotedelay2'],
            emotedelay3 = data['emotedelay3'],
            soundentriesid = data['soundentriesid'],
            emotesid = data['emotesid'],
            flags = data['flags'],
            verifiedbuild = data['verifiedbuild'],
        )