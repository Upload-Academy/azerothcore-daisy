
-- START playercreateinfo
SET
@race := {race},
@_class := {_class},
@map := {map},
@zone := {zone},
@position_x := {position_x},
@position_y := {position_y},
@position_z := {position_z},
@orientation := {orientation};

DELETE FROM playercreateinfo WHERE
    race=@race AND
    _class=@_class
;

INSERT INTO playercreateinfo (
    `race`,
    `class`,
    `map`,
    `zone`,
    `position_x`,
    `position_y`,
    `position_z`,
    `orientation`
)
VALUES (
    @race,
    @_class,
    @map,
    @zone,
    @position_x,
    @position_y,
    @position_z,
    @orientation
);
-- EOF playercreateinfo