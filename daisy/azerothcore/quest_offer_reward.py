def sql_new_quest_offer_reward(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            emote1 = data['emote1'],
            emote2 = data['emote2'],
            emote3 = data['emote3'],
            emote4 = data['emote4'],
            emotedelay1 = data['emotedelay1'],
            emotedelay2 = data['emotedelay2'],
            emotedelay3 = data['emotedelay3'],
            emotedelay4 = data['emotedelay4'],
            rewardtext = data['rewardtext'],
            verifiedbuild = data['verifiedbuild'],
        )