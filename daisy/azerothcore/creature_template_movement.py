def sql_new_creature_template_movement(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            creatureid = data['creatureid'],
            ground = data['ground'],
            swim = data['swim'],
            flight = data['flight'],
            rooted = data['rooted'],
            chase = data['chase'],
            random = data['random'],
            interactionpausetimer = data['interactionpausetimer'],
        )