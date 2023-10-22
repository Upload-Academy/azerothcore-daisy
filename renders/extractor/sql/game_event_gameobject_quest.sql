
-- START game_event_gameobject_quest
SET
@evententry := {evententry},
@id := {id},
@quest := {quest};

DELETE FROM game_event_gameobject_quest WHERE
    evententry=@evententry AND
    id=@id AND
    quest=@quest
;

INSERT INTO game_event_gameobject_quest (
    evententry,
    id,
    quest
)
VALUES (
    @evententry,
    @id,
    @quest
);
-- EOF game_event_gameobject_quest