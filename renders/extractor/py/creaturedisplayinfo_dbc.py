def sql_new_creaturedisplayinfo_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            modelid = data['modelid'],
            soundid = data['soundid'],
            extendeddisplayinfoid = data['extendeddisplayinfoid'],
            creaturemodelscale = data['creaturemodelscale'],
            creaturemodelalpha = data['creaturemodelalpha'],
            texturevariation_1 = data['texturevariation_1'],
            texturevariation_2 = data['texturevariation_2'],
            texturevariation_3 = data['texturevariation_3'],
            portraittexturename = data['portraittexturename'],
            bloodlevel = data['bloodlevel'],
            bloodid = data['bloodid'],
            npcsoundid = data['npcsoundid'],
            particlecolorid = data['particlecolorid'],
            creaturegeosetdata = data['creaturegeosetdata'],
            objecteffectpackageid = data['objecteffectpackageid'],
        )