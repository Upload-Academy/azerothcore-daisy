
-- START creature
SET
@guid := 5120001,
@id1 := 5110001,
@id2 := 0,
@id3 := 0,
@map := 0,
@zoneid := 12,
@areaid := 87,
@spawnmask := 1,
@phasemask := 1,
@equipment_id := 0,
@position_x := -9472.091797,
@position_y := 53.068123,
@position_z := 57.074425,
@orientation := 4.635926,
@spawntimesecs := 120,
@wander_distance := 0,
@currentwaypoint := 5110001,
@curhealth := 1,
@curmana := 0,
@movementtype := 2,
@npcflag := 0,
@unit_flags := 0,
@dynamicflags := 0,
@scriptname := "",
@verifiedbuild := 0,
@createobject := 0,
@comment := "";

DELETE FROM creature WHERE
    guid=@guid
;

INSERT INTO creature (
    `guid`,
    `id1`,
    `id2`,
    `id3`,
    `map`,
    `zoneid`,
    `areaid`,
    `spawnmask`,
    `phasemask`,
    `equipment_id`,
    `position_x`,
    `position_y`,
    `position_z`,
    `orientation`,
    `spawntimesecs`,
    `wander_distance`,
    `currentwaypoint`,
    `curhealth`,
    `curmana`,
    `movementtype`,
    `npcflag`,
    `unit_flags`,
    `dynamicflags`,
    `scriptname`,
    `verifiedbuild`,
    `createobject`,
    `comment`
)
VALUES (
    @guid,
    @id1,
    @id2,
    @id3,
    @map,
    @zoneid,
    @areaid,
    @spawnmask,
    @phasemask,
    @equipment_id,
    @position_x,
    @position_y,
    @position_z,
    @orientation,
    @spawntimesecs,
    @wander_distance,
    @currentwaypoint,
    @curhealth,
    @curmana,
    @movementtype,
    @npcflag,
    @unit_flags,
    @dynamicflags,
    @scriptname,
    @verifiedbuild,
    @createobject,
    @comment
);
-- EOF creature
-- START creature
SET
@guid := 5120002,
@id1 := 5110002,
@id2 := 0,
@id3 := 0,
@map := 0,
@zoneid := 12,
@areaid := 87,
@spawnmask := 1,
@phasemask := 1,
@equipment_id := 0,
@position_x := -9376.537109,
@position_y := -78.76651,
@position_z := 64.437859,
@orientation := 3.331397,
@spawntimesecs := 120,
@wander_distance := 0,
@currentwaypoint := 5110002,
@curhealth := 1,
@curmana := 0,
@movementtype := 2,
@npcflag := 0,
@unit_flags := 0,
@dynamicflags := 0,
@scriptname := "",
@verifiedbuild := 0,
@createobject := 0,
@comment := "";

DELETE FROM creature WHERE
    guid=@guid
;

INSERT INTO creature (
    `guid`,
    `id1`,
    `id2`,
    `id3`,
    `map`,
    `zoneid`,
    `areaid`,
    `spawnmask`,
    `phasemask`,
    `equipment_id`,
    `position_x`,
    `position_y`,
    `position_z`,
    `orientation`,
    `spawntimesecs`,
    `wander_distance`,
    `currentwaypoint`,
    `curhealth`,
    `curmana`,
    `movementtype`,
    `npcflag`,
    `unit_flags`,
    `dynamicflags`,
    `scriptname`,
    `verifiedbuild`,
    `createobject`,
    `comment`
)
VALUES (
    @guid,
    @id1,
    @id2,
    @id3,
    @map,
    @zoneid,
    @areaid,
    @spawnmask,
    @phasemask,
    @equipment_id,
    @position_x,
    @position_y,
    @position_z,
    @orientation,
    @spawntimesecs,
    @wander_distance,
    @currentwaypoint,
    @curhealth,
    @curmana,
    @movementtype,
    @npcflag,
    @unit_flags,
    @dynamicflags,
    @scriptname,
    @verifiedbuild,
    @createobject,
    @comment
);
-- EOF creature