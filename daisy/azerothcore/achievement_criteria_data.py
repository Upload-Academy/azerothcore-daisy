def sql_new_achievement_criteria_data(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            criteria_id = data['criteria_id'],
            type = data['type'],
            value1 = data['value1'],
            value2 = data['value2'],
            scriptname = data['scriptname'],
        )