from daisy.azerothcore.raw import *
from daisy.error import DaisyError
from daisy.azerothcore.constants import QUEST_TYPE_ENABLED

class Quest:
    dbx: None
    start_creature_id: int|None
    quest_id: int|None
    title: str|None
    description: str|None
    log: str|None
    complete_log: str|None
    level: int|None
    required_items: list[dict]|None
    rewards: list[dict]|None
    reputation: list[dict]|None

    # Defaults
    end_creature_id: int = None
    group_size: int = 1
    repeatable: bool = False
    daily: bool = False
    weekly: bool = False

    def __init__(self, dbx):
        self.dbx = dbx
        self.start_creature_id = None
        self.quest_id = None
        self.title = None
        self.description = None
        self.log = None
        self.complete_log = None
        self.level = None
        self.required_items = None
        self.rewards = None
        self.reputation = None

    def add_required_item(self, item_id, count, objective_text):
        if self.required_items:
            if len(self.required_items) == 4:
                return DaisyError("cannot exceed 4 required items")
        else:
            self.required_items = []

        self.required_items.append({
            "item_id": item_id,
            "count": count,
            "objective": objective_text,
        })

        return self

    def add_reward(self, item_id, count):
        if len(self.rewards) == 4:
            return DaisyError("cannot exceed 4 rewards")

        self.rewards.append({
            "item_id": item_id,
            "count": count,
        })

        return self

    def is_repeatable(self):
        self.repeatable = True
        self.daily = False
        self.weekly = False
        return self

    def is_daily(self):
        self.repeatable = False
        self.daily = True
        self.weekly = False
        return self

    def is_weekly(self):
        self.repeatable = False
        self.daily = False
        self.weekly = True
        return self

    def validate(self):
        if self.repeatable and self.daily:
            return DaisyError("quest cannot be repeatable and daily")

        if self.daily and self.weekly:
            return DaisyError("quest cannot be daily and weekly")

        if self.weekly and self.repeatable:
            return DaisyError("quest cannot be repeatable and weekly")

        if self.weekly and self.daily and self.repeatable:
            return DaisyError("quest cannot be repeatable, daily, and weekly")

    def apply(self):
        err = self.validate()
        if err: return err

        new_quest = {
            "id": self.quest_id,
            "questtype": QUEST_TYPE_ENABLED,
            "questlevel": self.level,
            "minlevel": self.level,
            "logtitle": self.title,
            "questdescription": self.description,
            "logdescription": self.log,
            "questcompletionlog": self.complete_log,
        }

        if self.required_items:
            required_items_count = len(self.required_items)
            if 0 < required_items_count < 5:
                for i, item in enumerate(self.required_items):
                    new_quest[f"requireditemid{i+1}"] = item["item_id"]
                    new_quest[f"requireditemcount{i+1}"] = item["count"]

        error = raw_insert_into_table(self.dbx, "quest_template", [new_quest])
        if error: return error

        # error, result = raw_insert_into_table(dbx, "quest_template_addon", [
        #     {
        #         "id": shelleneQuestFirstAidID,
        #         "specialflags": CON.QUEST_FLAGS_REPEATABLE,
        #     },
        #     {
        #         "id": shelleneQuestCookingID,
        #         "specialflags": CON.QUEST_FLAGS_REPEATABLE,
        #     },
        # ])
        # if error: perror(result)
        #
        # error, result = raw_insert_into_table(dbx, "quest_request_items", [
        #     {
        #         "id": shelleneQuestFirstAidID,
        #         "emoteoncomplete": CON.NPC_EMOTE_ONESHOT_CHEER,
        #         "emoteonincomplete": CON.NPC_EMOTE_ONESHOT_EXCLAMATION,
        #         "completiontext": "The kids are really suffering. Please do what you can to help."
        #     },
        #     {
        #         "id": shelleneQuestCookingID,
        #         "emoteoncomplete": CON.NPC_EMOTE_ONESHOT_CHEER,
        #         "emoteonincomplete": CON.NPC_EMOTE_ONESHOT_EXCLAMATION,
        #         "completiontext": "Anything you can give us would be greatly appreciated."
        #     },
        # ])
        # if error: perror(result)
        #
        # error, result = raw_insert_into_table(dbx, "quest_offer_reward", [
        #     {
        #         "id": shelleneQuestFirstAidID,
        #         "rewardtext": "Thank you! The kids will be thrilled! We don't have much, but here... you can have whatever the kids have found around the city and dumped in this box."
        #     },
        #     {
        #         "id": shelleneQuestCookingID,
        #         "rewardtext": "Thank you! You've just made our day! Now if you'll excuse me, I have to go get dinner ready."
        #     }
        # ])
        # if error: perror(result)
        #
        # error, _ = delete_creature_quest_starter_or_ender(dbx, shelleneNpcId, shelleneQuestCookingID)
        # if error: perror(result)
        #
        # error, _ = delete_creature_quest_starter_or_ender(dbx, shelleneNpcId, shelleneQuestFirstAidID)
        # if error: perror(result)
        #
        # error, result = raw_insert_into_table(dbx, "creature_queststarter", [
        #     {
        #         "id": shelleneNpcId,
        #         "quest": shelleneQuestCookingID,
        #     },
        #     {
        #         "id": shelleneNpcId,
        #         "quest": shelleneQuestFirstAidID,
        #     },
        # ], delete=False)
        # if error: perror(result)
        #
        # _ = delete_creature_quest_starter_or_ender(dbx, shelleneNpcId, shelleneQuestCookingID, table=T_ENDER)
        # _ = delete_creature_quest_starter_or_ender(dbx, shelleneNpcId, shelleneQuestFirstAidID, table=T_ENDER)
        # error, result = raw_insert_into_table(dbx, "creature_questender", [
        #     {
        #         "id": shelleneNpcId,
        #         "quest": shelleneQuestCookingID,
        #     },
        #     {
        #         "id": shelleneNpcId,
        #         "quest": shelleneQuestFirstAidID,
        #     },
        # ], delete=False)
        # if error: perror(result)
        #
        # # Finally update the NPC to be a quest giver
        # error, _ = raw_update_table(
        #     dbx,
        #     table="creature_template",
        #     entry=shelleneNpcId,
        #     key="npcflag",
        #     value=CON.CREATURE_NPC_FLAGS_QUEST_GIVER,
        #     entry_key="entry"
        # )
        # if error: perror(result)
        return None
