
-- START game_event_model_equip
SET
@evententry := {evententry},
@guid := {guid},
@modelid := {modelid},
@equipment_id := {equipment_id};

DELETE FROM game_event_model_equip WHERE
    guid=@guid
;

INSERT INTO game_event_model_equip (
    `evententry`,
    `guid`,
    `modelid`,
    `equipment_id`
)
VALUES (
    @evententry,
    @guid,
    @modelid,
    @equipment_id
);
-- EOF game_event_model_equip