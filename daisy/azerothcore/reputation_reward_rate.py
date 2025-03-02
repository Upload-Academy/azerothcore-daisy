def sql_new_reputation_reward_rate(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            faction = data['faction'],
            quest_rate = data['quest_rate'],
            quest_daily_rate = data['quest_daily_rate'],
            quest_weekly_rate = data['quest_weekly_rate'],
            quest_monthly_rate = data['quest_monthly_rate'],
            quest_repeatable_rate = data['quest_repeatable_rate'],
            creature_rate = data['creature_rate'],
            spell_rate = data['spell_rate'],
        )