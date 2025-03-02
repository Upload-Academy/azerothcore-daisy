
-- START gameobjectdisplayinfo_dbc
SET
@id := {id},
@modelname := "{modelname}",
@sound_1 := {sound_1},
@sound_2 := {sound_2},
@sound_3 := {sound_3},
@sound_4 := {sound_4},
@sound_5 := {sound_5},
@sound_6 := {sound_6},
@sound_7 := {sound_7},
@sound_8 := {sound_8},
@sound_9 := {sound_9},
@sound_10 := {sound_10},
@geoboxminx := {geoboxminx},
@geoboxminy := {geoboxminy},
@geoboxminz := {geoboxminz},
@geoboxmaxx := {geoboxmaxx},
@geoboxmaxy := {geoboxmaxy},
@geoboxmaxz := {geoboxmaxz},
@objecteffectpackageid := {objecteffectpackageid};

DELETE FROM gameobjectdisplayinfo_dbc WHERE
    id=@id
;

INSERT INTO gameobjectdisplayinfo_dbc (
    `id`,
    `modelname`,
    `sound_1`,
    `sound_2`,
    `sound_3`,
    `sound_4`,
    `sound_5`,
    `sound_6`,
    `sound_7`,
    `sound_8`,
    `sound_9`,
    `sound_10`,
    `geoboxminx`,
    `geoboxminy`,
    `geoboxminz`,
    `geoboxmaxx`,
    `geoboxmaxy`,
    `geoboxmaxz`,
    `objecteffectpackageid`
)
VALUES (
    @id,
    @modelname,
    @sound_1,
    @sound_2,
    @sound_3,
    @sound_4,
    @sound_5,
    @sound_6,
    @sound_7,
    @sound_8,
    @sound_9,
    @sound_10,
    @geoboxminx,
    @geoboxminy,
    @geoboxminz,
    @geoboxmaxx,
    @geoboxmaxy,
    @geoboxmaxz,
    @objecteffectpackageid
);
-- EOF gameobjectdisplayinfo_dbc