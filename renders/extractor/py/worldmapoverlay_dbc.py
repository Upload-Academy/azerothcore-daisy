def sql_new_worldmapoverlay_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            mapareaid = data['mapareaid'],
            areaid_1 = data['areaid_1'],
            areaid_2 = data['areaid_2'],
            areaid_3 = data['areaid_3'],
            areaid_4 = data['areaid_4'],
            mappointx = data['mappointx'],
            mappointy = data['mappointy'],
            texturename = data['texturename'],
            texturewidth = data['texturewidth'],
            textureheight = data['textureheight'],
            offsetx = data['offsetx'],
            offsety = data['offsety'],
            hitrecttop = data['hitrecttop'],
            hitrectleft = data['hitrectleft'],
            hitrectbottom = data['hitrectbottom'],
            hitrectright = data['hitrectright'],
        )