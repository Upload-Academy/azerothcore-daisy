
-- START gameobjectartkit_dbc
SET
@id := {id},
@texture_1 := {texture_1},
@texture_2 := {texture_2},
@texture_3 := {texture_3},
@attach_model_1 := {attach_model_1},
@attach_model_2 := {attach_model_2},
@attach_model_3 := {attach_model_3},
@attach_model_4 := {attach_model_4};

DELETE FROM gameobjectartkit_dbc WHERE
    id=@id
;

INSERT INTO gameobjectartkit_dbc (
    `id`,
    `texture_1`,
    `texture_2`,
    `texture_3`,
    `attach_model_1`,
    `attach_model_2`,
    `attach_model_3`,
    `attach_model_4`
)
VALUES (
    @id,
    @texture_1,
    @texture_2,
    @texture_3,
    @attach_model_1,
    @attach_model_2,
    @attach_model_3,
    @attach_model_4
);
-- EOF gameobjectartkit_dbc