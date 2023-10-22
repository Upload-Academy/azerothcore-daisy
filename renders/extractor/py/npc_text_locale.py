def sql_new_npc_text_locale(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            id = data['id'],
            locale = data['locale'],
            text0_0 = data['text0_0'],
            text0_1 = data['text0_1'],
            text1_0 = data['text1_0'],
            text1_1 = data['text1_1'],
            text2_0 = data['text2_0'],
            text2_1 = data['text2_1'],
            text3_0 = data['text3_0'],
            text3_1 = data['text3_1'],
            text4_0 = data['text4_0'],
            text4_1 = data['text4_1'],
            text5_0 = data['text5_0'],
            text5_1 = data['text5_1'],
            text6_0 = data['text6_0'],
            text6_1 = data['text6_1'],
            text7_0 = data['text7_0'],
            text7_1 = data['text7_1'],
        )