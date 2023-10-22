-- BEGIN: game_event
SET
@evententry := {evententry},
@start_time := {start_time},
@end_time := {end_time},
@occurence := {occurence},
@length := {length},
@holiday := {holiday},
@holidaystage := {holidaystage},
@description := '{description}',
@world_event := {world_event},
@announce := {announce};

DELETE FROM game_event WHERE
    evententry=@evententry
;

INSERT INTO game_event (
    evententry,
    start_time,
    end_time,
    occurence,
    length,
    holiday,
    holidaystage,
    description,
    world_event,
    announce
)
VALUES (
    @evententry,
    @start_time,
    @end_time,
    @occurence,
    @length,
    @holiday,
    @holidaystage,
    @description,
    @world_event,
    @announce
);

-- END: game_event