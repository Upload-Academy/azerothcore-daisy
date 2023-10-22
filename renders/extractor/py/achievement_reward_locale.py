def sql_new_achievement_reward_locale(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            locale = data['locale'],
            subject = data['subject'],
            text = data['text'],
        )