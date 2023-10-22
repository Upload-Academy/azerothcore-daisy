-- BEGIN: areatrigger_teleport
SET
@id := {id},
@name := '{name}',
@target_map := {target_map},
@target_position_x := {target_position_x},
@target_position_y := {target_position_y},
@target_position_z := {target_position_z},
@target_orientation := {target_orientation};

DELETE FROM areatrigger_teleport WHERE
    id=@id
;

INSERT INTO areatrigger_teleport (
    id,
    name,
    target_map,
    target_position_x,
    target_position_y,
    target_position_z,
    target_orientation
)
VALUES (
    @id,
    @name,
    @target_map,
    @target_position_x,
    @target_position_y,
    @target_position_z,
    @target_orientation
);

-- END: areatrigger_teleport