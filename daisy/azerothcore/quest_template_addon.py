def sql_new_quest_template_addon(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            maxlevel = data['maxlevel'],
            allowableclasses = data['allowableclasses'],
            sourcespellid = data['sourcespellid'],
            prevquestid = data['prevquestid'],
            nextquestid = data['nextquestid'],
            exclusivegroup = data['exclusivegroup'],
            rewardmailtemplateid = data['rewardmailtemplateid'],
            rewardmaildelay = data['rewardmaildelay'],
            requiredskillid = data['requiredskillid'],
            requiredskillpoints = data['requiredskillpoints'],
            requiredminrepfaction = data['requiredminrepfaction'],
            requiredmaxrepfaction = data['requiredmaxrepfaction'],
            requiredminrepvalue = data['requiredminrepvalue'],
            requiredmaxrepvalue = data['requiredmaxrepvalue'],
            provideditemcount = data['provideditemcount'],
            specialflags = data['specialflags'],
        )