-- BEGIN: spell_target_position
SET
@id := {id},
@effectindex := {effectindex},
@mapid := {mapid},
@positionx := {positionx},
@positiony := {positiony},
@positionz := {positionz},
@orientation := {orientation},
@verifiedbuild := {verifiedbuild};

DELETE FROM spell_target_position WHERE
    id=@id AND
    effectindex=@effectindex
;

INSERT INTO spell_target_position (
    id,
    effectindex,
    mapid,
    positionx,
    positiony,
    positionz,
    orientation,
    verifiedbuild
)
VALUES (
    @id,
    @effectindex,
    @mapid,
    @positionx,
    @positiony,
    @positionz,
    @orientation,
    @verifiedbuild
);

-- END: spell_target_position