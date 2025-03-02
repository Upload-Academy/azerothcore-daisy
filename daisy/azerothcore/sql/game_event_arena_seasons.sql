
-- START game_event_arena_seasons
SET
@evententry := {evententry},
@season := {season};

DELETE FROM game_event_arena_seasons WHERE
    evententry=@evententry AND
    season=@season
;

INSERT INTO game_event_arena_seasons (
    `evententry`,
    `season`
)
VALUES (
    @evententry,
    @season
);
-- EOF game_event_arena_seasons