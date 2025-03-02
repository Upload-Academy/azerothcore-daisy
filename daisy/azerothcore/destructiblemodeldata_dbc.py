def sql_new_destructiblemodeldata_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            state0wmo = data['state0wmo'],
            state0destructiondoodadset = data['state0destructiondoodadset'],
            state0impacteffectdoodadset = data['state0impacteffectdoodadset'],
            state0ambientdoodadset = data['state0ambientdoodadset'],
            state1wmo = data['state1wmo'],
            state1destructiondoodadset = data['state1destructiondoodadset'],
            state1impacteffectdoodadset = data['state1impacteffectdoodadset'],
            state1ambientdoodadset = data['state1ambientdoodadset'],
            state2wmo = data['state2wmo'],
            state2destructiondoodadset = data['state2destructiondoodadset'],
            state2impacteffectdoodadset = data['state2impacteffectdoodadset'],
            state2ambientdoodadset = data['state2ambientdoodadset'],
            state3wmo = data['state3wmo'],
            state3destructiondoodadset = data['state3destructiondoodadset'],
            state3impacteffectdoodadset = data['state3impacteffectdoodadset'],
            state3ambientdoodadset = data['state3ambientdoodadset'],
            field17 = data['field17'],
            field18 = data['field18'],
        )