import sys
import os

import daisy.azerothcore.constants as CON

from db import database_connection
from daisy.azerothcore.raw import raw_insert_into_table, raw_update_table
from daisy.azerothcore.creature import delete_creature_quest_starter_or_ender
from daisy.azerothcore.creature import TBL_CREATURE_QUEST_ENDER as T_ENDER

dbx = None

def perror(msg):
    print(f"ERROR: {msg}")
    sys.exit(-1)

def pinfo(msg):
    print(f"INFO: {msg}")

example_data = {
    "items": [
        {
            "objective": "",
            "item_id": 0,
            "count": 0,
         }
    ],
    "rewards": [],
    "reputation": [],
}

example_reward_items = []
example_reward_rep = []

def quest_create(
        dbx,
        start_creature,
        end_creature,
        quest_id,
        title,
        description,
        log,
        complete_log,
        level,
        group_size=1,
        repeatable=False,
        daily=False,
        weekly=False
):
    pass

def quest_attach_reward(): pass
def quest_attach_flag(): pass

def create_item_fetch_quest(
        dbx,
        start_creature_id,
        end_creature_id,
        quest_id,
        title,
        description,
        log,
        complete_log,
        level,
        data,
        group_size=1,
        repeatable=False,
        daily=False,
        weekly=False,
):
    """
    Highly abstracted interface for creating quests.
    :return:
    """


def main():
    global dbx

    err, result = database_connection({
        "user": os.environ['AC_DB_USERNAME'],
        "password": os.environ['AC_DB_PASSWORD'],
        "host": os.environ['AC_DB_HOSTNAME'],
        "database": os.environ['AC_DB_DATABASE']
    })
    if err: perror(result)
    dbx = result

    shelleneNpcId = "14497"
    shelleneQuestFirstAidID = "0101130001"
    shelleneQuestCookingID = "0101130002"

    # "questtype": CON.QUEST_TYPE_ENABLED,
    # "questlevel": "-1",
    # "minlevel": "1",
    # "logtitle": "Healing Wounds",
    # "questdescription": "$N, we're in desperate need of bandages and healing potions to ease the pain of our orphans. Some of them have crippling disabilities or nasty wounds from their abusive parents. Any and all donations really help them out.",
    # "logdescription": "We're in desperate need of bandages and healing potions. Could you perhaps make us a set of ten bandages and ten potions? It'll go so far.",
    # "questcompletionlog": "Donate to the orphanage",
    # "objectivetext1": "Donate 10x Linen Bandages",
    # "objectivetext2": "Donate 10x Minor Healing Potions",
    # "requireditemid1": CON.ITEM_CONSUMABLE_FIRSTAID_LINENBANDAGE,
    # "requireditemcount1": "10",
    # "requireditemid2": CON.ITEM_CONSUMABLE_HERBALISM_MINORHEALINGPOTION,
    # "requireditemcount2": "10",
    # "questsortid": "1519",

    create_item_fetch_quest(
        dbx,
        shelleneNpcId,
        shelleneNpcId,
        shelleneQuestFirstAidID,
        "Healing Wounds",
        "$N, we're in desperate need of bandages and healing potions to ease the pain of our orphans. Some of them have crippling disabilities or nasty wounds from their abusive parents. Any and all donations really help them out.",
        "We're in desperate need of bandages and healing potions. Could you perhaps make us a set of ten bandages and ten potions? It'll go so far.",
        "Donate to the orphanage",
        1,
        {},
        repeatable=True,
    )

if __name__ == "__main__":
    main()