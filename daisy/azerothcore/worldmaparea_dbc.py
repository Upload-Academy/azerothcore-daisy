def sql_new_worldmaparea_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            mapid = data['mapid'],
            areaid = data['areaid'],
            areaname = data['areaname'],
            locleft = data['locleft'],
            locright = data['locright'],
            loctop = data['loctop'],
            locbottom = data['locbottom'],
            displaymapid = data['displaymapid'],
            defaultdungeonfloor = data['defaultdungeonfloor'],
            parentworldmapid = data['parentworldmapid'],
        )