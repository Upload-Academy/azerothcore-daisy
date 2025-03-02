
-- START game_event_seasonal_questrelation
SET
@questid := {questid},
@evententry := {evententry};

DELETE FROM game_event_seasonal_questrelation WHERE
    questid=@questid AND
    evententry=@evententry
;

INSERT INTO game_event_seasonal_questrelation (
    `questid`,
    `evententry`
)
VALUES (
    @questid,
    @evententry
);
-- EOF game_event_seasonal_questrelation