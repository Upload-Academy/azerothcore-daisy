def sql_new_creature_onkill_reputation(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            creature_id = data['creature_id'],
            rewonkillrepfaction1 = data['rewonkillrepfaction1'],
            rewonkillrepfaction2 = data['rewonkillrepfaction2'],
            maxstanding1 = data['maxstanding1'],
            isteamaward1 = data['isteamaward1'],
            rewonkillrepvalue1 = data['rewonkillrepvalue1'],
            maxstanding2 = data['maxstanding2'],
            isteamaward2 = data['isteamaward2'],
            rewonkillrepvalue2 = data['rewonkillrepvalue2'],
            teamdependent = data['teamdependent'],
        )