
-- START game_event_gameobject
SET
@evententry := {evententry},
@guid := {guid};

DELETE FROM game_event_gameobject WHERE
    evententry=@evententry AND
    guid=@guid
;

INSERT INTO game_event_gameobject (
    `evententry`,
    `guid`
)
VALUES (
    @evententry,
    @guid
);
-- EOF game_event_gameobject