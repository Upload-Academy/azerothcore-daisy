def sql_new_holidays_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            duration_1 = data['duration_1'],
            duration_2 = data['duration_2'],
            duration_3 = data['duration_3'],
            duration_4 = data['duration_4'],
            duration_5 = data['duration_5'],
            duration_6 = data['duration_6'],
            duration_7 = data['duration_7'],
            duration_8 = data['duration_8'],
            duration_9 = data['duration_9'],
            duration_10 = data['duration_10'],
            date_1 = data['date_1'],
            date_2 = data['date_2'],
            date_3 = data['date_3'],
            date_4 = data['date_4'],
            date_5 = data['date_5'],
            date_6 = data['date_6'],
            date_7 = data['date_7'],
            date_8 = data['date_8'],
            date_9 = data['date_9'],
            date_10 = data['date_10'],
            date_11 = data['date_11'],
            date_12 = data['date_12'],
            date_13 = data['date_13'],
            date_14 = data['date_14'],
            date_15 = data['date_15'],
            date_16 = data['date_16'],
            date_17 = data['date_17'],
            date_18 = data['date_18'],
            date_19 = data['date_19'],
            date_20 = data['date_20'],
            date_21 = data['date_21'],
            date_22 = data['date_22'],
            date_23 = data['date_23'],
            date_24 = data['date_24'],
            date_25 = data['date_25'],
            date_26 = data['date_26'],
            region = data['region'],
            looping = data['looping'],
            calendarflags_1 = data['calendarflags_1'],
            calendarflags_2 = data['calendarflags_2'],
            calendarflags_3 = data['calendarflags_3'],
            calendarflags_4 = data['calendarflags_4'],
            calendarflags_5 = data['calendarflags_5'],
            calendarflags_6 = data['calendarflags_6'],
            calendarflags_7 = data['calendarflags_7'],
            calendarflags_8 = data['calendarflags_8'],
            calendarflags_9 = data['calendarflags_9'],
            calendarflags_10 = data['calendarflags_10'],
            holidaynameid = data['holidaynameid'],
            holidaydescriptionid = data['holidaydescriptionid'],
            texturefilename = data['texturefilename'],
            priority = data['priority'],
            calendarfiltertype = data['calendarfiltertype'],
            flags = data['flags'],
        )