def sql_new_gameobjectdisplayinfo_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            modelname = data['modelname'],
            sound_1 = data['sound_1'],
            sound_2 = data['sound_2'],
            sound_3 = data['sound_3'],
            sound_4 = data['sound_4'],
            sound_5 = data['sound_5'],
            sound_6 = data['sound_6'],
            sound_7 = data['sound_7'],
            sound_8 = data['sound_8'],
            sound_9 = data['sound_9'],
            sound_10 = data['sound_10'],
            geoboxminx = data['geoboxminx'],
            geoboxminy = data['geoboxminy'],
            geoboxminz = data['geoboxminz'],
            geoboxmaxx = data['geoboxmaxx'],
            geoboxmaxy = data['geoboxmaxy'],
            geoboxmaxz = data['geoboxmaxz'],
            objecteffectpackageid = data['objecteffectpackageid'],
        )