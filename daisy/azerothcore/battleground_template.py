def sql_new_battleground_template(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            minplayersperteam = data['minplayersperteam'],
            maxplayersperteam = data['maxplayersperteam'],
            minlvl = data['minlvl'],
            maxlvl = data['maxlvl'],
            alliancestartloc = data['alliancestartloc'],
            alliancestarto = data['alliancestarto'],
            hordestartloc = data['hordestartloc'],
            hordestarto = data['hordestarto'],
            startmaxdist = data['startmaxdist'],
            weight = data['weight'],
            scriptname = data['scriptname'],
            comment = data['comment'],
        )