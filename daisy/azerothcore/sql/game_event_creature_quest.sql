
-- START game_event_creature_quest
SET
@evententry := {evententry},
@id := {id},
@quest := {quest};

DELETE FROM game_event_creature_quest WHERE
    id=@id AND
    quest=@quest
;

INSERT INTO game_event_creature_quest (
    `evententry`,
    `id`,
    `quest`
)
VALUES (
    @evententry,
    @id,
    @quest
);
-- EOF game_event_creature_quest