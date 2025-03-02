
-- START creaturespelldata_dbc
SET
@id := {id},
@spells_1 := {spells_1},
@spells_2 := {spells_2},
@spells_3 := {spells_3},
@spells_4 := {spells_4},
@availability_1 := {availability_1},
@availability_2 := {availability_2},
@availability_3 := {availability_3},
@availability_4 := {availability_4};

DELETE FROM creaturespelldata_dbc WHERE
    id=@id
;

INSERT INTO creaturespelldata_dbc (
    `id`,
    `spells_1`,
    `spells_2`,
    `spells_3`,
    `spells_4`,
    `availability_1`,
    `availability_2`,
    `availability_3`,
    `availability_4`
)
VALUES (
    @id,
    @spells_1,
    @spells_2,
    @spells_3,
    @spells_4,
    @availability_1,
    @availability_2,
    @availability_3,
    @availability_4
);
-- EOF creaturespelldata_dbc