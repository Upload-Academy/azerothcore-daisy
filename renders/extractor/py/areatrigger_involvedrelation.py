def sql_new_areatrigger_involvedrelation(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            quest = data['quest'],
        )