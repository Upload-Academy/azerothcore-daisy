def sql_new_creature_movement_override(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            spawnid = data['spawnid'],
            ground = data['ground'],
            swim = data['swim'],
            flight = data['flight'],
            rooted = data['rooted'],
            chase = data['chase'],
            random = data['random'],
            interactionpausetimer = data['interactionpausetimer'],
        )