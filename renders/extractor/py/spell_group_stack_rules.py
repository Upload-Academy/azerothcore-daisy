def sql_new_spell_group_stack_rules(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            group_id = data['group_id'],
            stack_rule = data['stack_rule'],
            description = data['description'],
        )