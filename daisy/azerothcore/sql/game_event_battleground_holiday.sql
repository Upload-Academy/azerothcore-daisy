
-- START game_event_battleground_holiday
SET
@evententry := {evententry},
@bgflag := {bgflag};

DELETE FROM game_event_battleground_holiday WHERE
    evententry=@evententry
;

INSERT INTO game_event_battleground_holiday (
    `evententry`,
    `bgflag`
)
VALUES (
    @evententry,
    @bgflag
);
-- EOF game_event_battleground_holiday