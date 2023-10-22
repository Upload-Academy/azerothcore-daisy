def sql_new_quest_mail_sender(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            questid = data['questid'],
            rewardmailsenderentry = data['rewardmailsenderentry'],
        )