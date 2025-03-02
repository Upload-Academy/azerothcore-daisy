def sql_new_vehicle_accessory(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            guid = data['guid'],
            accessory_entry = data['accessory_entry'],
            seat_id = data['seat_id'],
            minion = data['minion'],
            description = data['description'],
            summontype = data['summontype'],
            summontimer = data['summontimer'],
        )