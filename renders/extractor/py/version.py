def sql_new_version(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            core_version = data['core_version'],
            core_revision = data['core_revision'],
            db_version = data['db_version'],
            cache_id = data['cache_id'],
        )