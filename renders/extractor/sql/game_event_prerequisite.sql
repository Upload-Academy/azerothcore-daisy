-- BEGIN: game_event_prerequisite
SET
@evententry := {evententry},
@prerequisite_event := {prerequisite_event};

DELETE FROM game_event_prerequisite WHERE
    evententry=@evententry AND
    prerequisite_event=@prerequisite_event
;

INSERT INTO game_event_prerequisite (
    evententry,
    prerequisite_event
)
VALUES (
    @evententry,
    @prerequisite_event
);

-- END: game_event_prerequisite