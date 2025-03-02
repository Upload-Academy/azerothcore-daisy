def sql_new_vehicle_template_accessory(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            accessory_entry = data['accessory_entry'],
            seat_id = data['seat_id'],
            minion = data['minion'],
            description = data['description'],
            summontype = data['summontype'],
            summontimer = data['summontimer'],
        )