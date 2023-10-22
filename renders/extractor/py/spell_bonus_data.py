def sql_new_spell_bonus_data(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            entry = data['entry'],
            direct_bonus = data['direct_bonus'],
            dot_bonus = data['dot_bonus'],
            ap_bonus = data['ap_bonus'],
            ap_dot_bonus = data['ap_dot_bonus'],
            comments = data['comments'],
        )