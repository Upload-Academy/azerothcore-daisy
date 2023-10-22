
-- START light_dbc
SET
@id := {id},
@continentid := {continentid},
@x := {x},
@y := {y},
@z := {z},
@falloffstart := {falloffstart},
@falloffend := {falloffend},
@lightparamsid_1 := {lightparamsid_1},
@lightparamsid_2 := {lightparamsid_2},
@lightparamsid_3 := {lightparamsid_3},
@lightparamsid_4 := {lightparamsid_4},
@lightparamsid_5 := {lightparamsid_5},
@lightparamsid_6 := {lightparamsid_6},
@lightparamsid_7 := {lightparamsid_7},
@lightparamsid_8 := {lightparamsid_8};

DELETE FROM light_dbc WHERE
    id=@id
;

INSERT INTO light_dbc (
    id,
    continentid,
    x,
    y,
    z,
    falloffstart,
    falloffend,
    lightparamsid_1,
    lightparamsid_2,
    lightparamsid_3,
    lightparamsid_4,
    lightparamsid_5,
    lightparamsid_6,
    lightparamsid_7,
    lightparamsid_8
)
VALUES (
    @id,
    @continentid,
    @x,
    @y,
    @z,
    @falloffstart,
    @falloffend,
    @lightparamsid_1,
    @lightparamsid_2,
    @lightparamsid_3,
    @lightparamsid_4,
    @lightparamsid_5,
    @lightparamsid_6,
    @lightparamsid_7,
    @lightparamsid_8
);
-- EOF light_dbc