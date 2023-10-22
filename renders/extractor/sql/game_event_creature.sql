
-- START game_event_creature
SET
@evententry := {evententry},
@guid := {guid};

DELETE FROM game_event_creature WHERE
    evententry=@evententry AND
    guid=@guid
;

INSERT INTO game_event_creature (
    evententry,
    guid
)
VALUES (
    @evententry,
    @guid
);
-- EOF game_event_creature