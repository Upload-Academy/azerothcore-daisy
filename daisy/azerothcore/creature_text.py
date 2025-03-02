def sql_new_creature_text(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            creatureid = data['creatureid'],
            groupid = data['groupid'],
            id = data['id'],
            text = data['text'],
            type = data['type'],
            language = data['language'],
            probability = data['probability'],
            emote = data['emote'],
            duration = data['duration'],
            sound = data['sound'],
            broadcasttextid = data['broadcasttextid'],
            textrange = data['textrange'],
            comment = data['comment'],
        )