def sql_new_achievement_reward(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            titlea = data['titlea'],
            titleh = data['titleh'],
            itemid = data['itemid'],
            sender = data['sender'],
            subject = data['subject'],
            body = data['body'],
            mailtemplateid = data['mailtemplateid'],
        )