def sql_new_mail_level_reward(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            level = data['level'],
            racemask = data['racemask'],
            mailtemplateid = data['mailtemplateid'],
            senderentry = data['senderentry'],
        )