import os
import sys

from db import database_connection
from daisy.azerothcore.classes.quest import Quest
from daisy.azerothcore.constants import ITEM_CONSUMABLE_FIRSTAID_LINENBANDAGE

def perror(msg):
    print(f"ERROR: {msg}")
    sys.exit(-1)

def pinfo(msg):
    print(f"INFO: {msg}")

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
shelleneQuestTitle = "Healing Wounds"
shelleneQuestDesc = "$N, we're in desperate need of bandages and healing potions to ease the pain of our orphans. Some of them have crippling disabilities or nasty wounds from their abusive parents. Any and all donations really help them out."
shelleneQuestLog = "We're in desperate need of bandages and healing potions. Could you perhaps make us a set of ten bandages and ten potions? It'll go so far."
shelleneQuestCompleteLog = "Donate to the orphanage"
shelleneQuestLevel = 1

q = Quest(dbx).is_repeatable()
q.start_creature_id = shelleneNpcId
q.quest_id = shelleneQuestFirstAidID
q.title = shelleneQuestTitle
q.description = shelleneQuestDesc
q.log = shelleneQuestLog
q.complete_log = shelleneQuestCompleteLog
q.level = shelleneQuestLevel
q.add_required_item(ITEM_CONSUMABLE_FIRSTAID_LINENBANDAGE, 10, "Bring me 10 bandages")
err = q.apply()
if err: perror(err.error)
print("OK")