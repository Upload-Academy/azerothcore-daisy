
-- START pvpdifficulty_dbc
SET
@id := {id},
@mapid := {mapid},
@rangeindex := {rangeindex},
@minlevel := {minlevel},
@maxlevel := {maxlevel},
@difficulty := {difficulty};

DELETE FROM pvpdifficulty_dbc WHERE
    id=@id
;

INSERT INTO pvpdifficulty_dbc (
    `id`,
    `mapid`,
    `rangeindex`,
    `minlevel`,
    `maxlevel`,
    `difficulty`
)
VALUES (
    @id,
    @mapid,
    @rangeindex,
    @minlevel,
    @maxlevel,
    @difficulty
);
-- EOF pvpdifficulty_dbc