-- BEGIN: lfg_dungeon_template
SET
@dungeonid := {dungeonid},
@name := '{name}',
@position_x := {position_x},
@position_y := {position_y},
@position_z := {position_z},
@orientation := {orientation},
@verifiedbuild := {verifiedbuild};

DELETE FROM lfg_dungeon_template WHERE
    dungeonid=@dungeonid
;

INSERT INTO lfg_dungeon_template (
    dungeonid,
    name,
    position_x,
    position_y,
    position_z,
    orientation,
    verifiedbuild
)
VALUES (
    @dungeonid,
    @name,
    @position_x,
    @position_y,
    @position_z,
    @orientation,
    @verifiedbuild
);

-- END: lfg_dungeon_template