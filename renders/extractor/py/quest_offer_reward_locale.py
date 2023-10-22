def sql_new_quest_offer_reward_locale(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            locale = data['locale'],
            rewardtext = data['rewardtext'],
            verifiedbuild = data['verifiedbuild'],
        )