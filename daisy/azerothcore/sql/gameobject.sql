
-- START gameobject
SET
@guid := {guid},
@id := {id},
@map := {map},
@zoneid := {zoneid},
@areaid := {areaid},
@spawnmask := {spawnmask},
@phasemask := {phasemask},
@position_x := {position_x},
@position_y := {position_y},
@position_z := {position_z},
@orientation := {orientation},
@rotation0 := {rotation0},
@rotation1 := {rotation1},
@rotation2 := {rotation2},
@rotation3 := {rotation3},
@spawntimesecs := {spawntimesecs},
@animprogress := {animprogress},
@state := {state},
@scriptname := "{scriptname}",
@verifiedbuild := {verifiedbuild},
@comment := "{comment}";

DELETE FROM gameobject WHERE
    guid=@guid
;

INSERT INTO gameobject (
    `guid`,
    `id`,
    `map`,
    `zoneid`,
    `areaid`,
    `spawnmask`,
    `phasemask`,
    `position_x`,
    `position_y`,
    `position_z`,
    `orientation`,
    `rotation0`,
    `rotation1`,
    `rotation2`,
    `rotation3`,
    `spawntimesecs`,
    `animprogress`,
    `state`,
    `scriptname`,
    `verifiedbuild`,
    `comment`
)
VALUES (
    @guid,
    @id,
    @map,
    @zoneid,
    @areaid,
    @spawnmask,
    @phasemask,
    @position_x,
    @position_y,
    @position_z,
    @orientation,
    @rotation0,
    @rotation1,
    @rotation2,
    @rotation3,
    @spawntimesecs,
    @animprogress,
    @state,
    @scriptname,
    @verifiedbuild,
    @comment
);
-- EOF gameobject