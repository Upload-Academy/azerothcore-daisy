def sql_new_spellvisual_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            precastkit = data['precastkit'],
            castkit = data['castkit'],
            impactkit = data['impactkit'],
            statekit = data['statekit'],
            statedonekit = data['statedonekit'],
            channelkit = data['channelkit'],
            hasmissile = data['hasmissile'],
            missilemodel = data['missilemodel'],
            missilepathtype = data['missilepathtype'],
            missiledestinationattachment = data['missiledestinationattachment'],
            missilesound = data['missilesound'],
            animeventsoundid = data['animeventsoundid'],
            flags = data['flags'],
            casterimpactkit = data['casterimpactkit'],
            targetimpactkit = data['targetimpactkit'],
            missileattachment = data['missileattachment'],
            missilefollowgroundheight = data['missilefollowgroundheight'],
            missilefollowgrounddropspeed = data['missilefollowgrounddropspeed'],
            missilefollowgroundapproach = data['missilefollowgroundapproach'],
            missilefollowgroundflags = data['missilefollowgroundflags'],
            missilemotion = data['missilemotion'],
            missiletargetingkit = data['missiletargetingkit'],
            instantareakit = data['instantareakit'],
            impactareakit = data['impactareakit'],
            persistentareakit = data['persistentareakit'],
            missilecastoffsetx = data['missilecastoffsetx'],
            missilecastoffsety = data['missilecastoffsety'],
            missilecastoffsetz = data['missilecastoffsetz'],
            missileimpactoffsetx = data['missileimpactoffsetx'],
            missileimpactoffsety = data['missileimpactoffsety'],
            missileimpactoffsetz = data['missileimpactoffsetz'],
        )