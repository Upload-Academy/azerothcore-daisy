def sql_new_holiday_dates(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            date_id = data['date_id'],
            date_value = data['date_value'],
            holiday_duration = data['holiday_duration'],
        )