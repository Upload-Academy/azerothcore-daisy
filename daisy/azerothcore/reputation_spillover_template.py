def sql_new_reputation_spillover_template(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            faction = data['faction'],
            faction1 = data['faction1'],
            rate_1 = data['rate_1'],
            rank_1 = data['rank_1'],
            faction2 = data['faction2'],
            rate_2 = data['rate_2'],
            rank_2 = data['rank_2'],
            faction3 = data['faction3'],
            rate_3 = data['rate_3'],
            rank_3 = data['rank_3'],
            faction4 = data['faction4'],
            rate_4 = data['rate_4'],
            rank_4 = data['rank_4'],
            faction5 = data['faction5'],
            rate_5 = data['rate_5'],
            rank_5 = data['rank_5'],
            faction6 = data['faction6'],
            rate_6 = data['rate_6'],
            rank_6 = data['rank_6'],
        )