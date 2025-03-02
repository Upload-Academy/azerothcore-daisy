def sql_new_taxipathnode_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            pathid = data['pathid'],
            nodeindex = data['nodeindex'],
            continentid = data['continentid'],
            locx = data['locx'],
            locy = data['locy'],
            locz = data['locz'],
            flags = data['flags'],
            delay = data['delay'],
            arrivaleventid = data['arrivaleventid'],
            departureeventid = data['departureeventid'],
        )