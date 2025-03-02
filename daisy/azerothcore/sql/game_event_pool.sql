
-- START game_event_pool
SET
@evententry := {evententry},
@pool_entry := {pool_entry};

DELETE FROM game_event_pool WHERE
    pool_entry=@pool_entry
;

INSERT INTO game_event_pool (
    `evententry`,
    `pool_entry`
)
VALUES (
    @evententry,
    @pool_entry
);
-- EOF game_event_pool