def sql_new_emotes_dbc(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            emoteslashcommand = data['emoteslashcommand'],
            animid = data['animid'],
            emoteflags = data['emoteflags'],
            emotespecproc = data['emotespecproc'],
            emotespecprocparam = data['emotespecprocparam'],
            eventsoundid = data['eventsoundid'],
        )