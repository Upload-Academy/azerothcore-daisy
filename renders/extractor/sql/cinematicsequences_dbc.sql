
-- START cinematicsequences_dbc
SET
@id := {id},
@soundid := {soundid},
@camera_1 := {camera_1},
@camera_2 := {camera_2},
@camera_3 := {camera_3},
@camera_4 := {camera_4},
@camera_5 := {camera_5},
@camera_6 := {camera_6},
@camera_7 := {camera_7},
@camera_8 := {camera_8};

DELETE FROM cinematicsequences_dbc WHERE
    id=@id
;

INSERT INTO cinematicsequences_dbc (
    id,
    soundid,
    camera_1,
    camera_2,
    camera_3,
    camera_4,
    camera_5,
    camera_6,
    camera_7,
    camera_8
)
VALUES (
    @id,
    @soundid,
    @camera_1,
    @camera_2,
    @camera_3,
    @camera_4,
    @camera_5,
    @camera_6,
    @camera_7,
    @camera_8
);
-- EOF cinematicsequences_dbc