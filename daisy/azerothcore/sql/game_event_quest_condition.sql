
-- START game_event_quest_condition
SET
@evententry := {evententry},
@quest := {quest},
@condition_id := {condition_id},
@num := {num};

DELETE FROM game_event_quest_condition WHERE
    quest=@quest
;

INSERT INTO game_event_quest_condition (
    `evententry`,
    `quest`,
    `condition_id`,
    `num`
)
VALUES (
    @evententry,
    @quest,
    @condition_id,
    @num
);
-- EOF game_event_quest_condition