
-- START game_event_npcflag
SET
@evententry := {evententry},
@guid := {guid},
@npcflag := {npcflag};

DELETE FROM game_event_npcflag WHERE
    evententry=@evententry AND
    guid=@guid
;

INSERT INTO game_event_npcflag (
    evententry,
    guid,
    npcflag
)
VALUES (
    @evententry,
    @guid,
    @npcflag
);
-- EOF game_event_npcflag