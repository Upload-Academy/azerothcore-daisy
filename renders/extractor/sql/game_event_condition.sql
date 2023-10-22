
-- START game_event_condition
SET
@evententry := {evententry},
@condition_id := {condition_id},
@req_num := {req_num},
@max_world_state_field := {max_world_state_field},
@done_world_state_field := {done_world_state_field},
@description := '{description}';

DELETE FROM game_event_condition WHERE
    evententry=@evententry AND
    condition_id=@condition_id
;

INSERT INTO game_event_condition (
    evententry,
    condition_id,
    req_num,
    max_world_state_field,
    done_world_state_field,
    description
)
VALUES (
    @evententry,
    @condition_id,
    @req_num,
    @max_world_state_field,
    @done_world_state_field,
    @description
);
-- EOF game_event_condition