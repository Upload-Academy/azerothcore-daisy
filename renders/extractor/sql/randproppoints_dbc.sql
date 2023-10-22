
-- START randproppoints_dbc
SET
@id := {id},
@epic_1 := {epic_1},
@epic_2 := {epic_2},
@epic_3 := {epic_3},
@epic_4 := {epic_4},
@epic_5 := {epic_5},
@superior_1 := {superior_1},
@superior_2 := {superior_2},
@superior_3 := {superior_3},
@superior_4 := {superior_4},
@superior_5 := {superior_5},
@good_1 := {good_1},
@good_2 := {good_2},
@good_3 := {good_3},
@good_4 := {good_4},
@good_5 := {good_5};

DELETE FROM randproppoints_dbc WHERE
    id=@id
;

INSERT INTO randproppoints_dbc (
    id,
    epic_1,
    epic_2,
    epic_3,
    epic_4,
    epic_5,
    superior_1,
    superior_2,
    superior_3,
    superior_4,
    superior_5,
    good_1,
    good_2,
    good_3,
    good_4,
    good_5
)
VALUES (
    @id,
    @epic_1,
    @epic_2,
    @epic_3,
    @epic_4,
    @epic_5,
    @superior_1,
    @superior_2,
    @superior_3,
    @superior_4,
    @superior_5,
    @good_1,
    @good_2,
    @good_3,
    @good_4,
    @good_5
);
-- EOF randproppoints_dbc