-- BEGIN: overridespelldata_dbc
SET
@id := {id},
@spells_1 := {spells_1},
@spells_2 := {spells_2},
@spells_3 := {spells_3},
@spells_4 := {spells_4},
@spells_5 := {spells_5},
@spells_6 := {spells_6},
@spells_7 := {spells_7},
@spells_8 := {spells_8},
@spells_9 := {spells_9},
@spells_10 := {spells_10},
@flags := {flags};

DELETE FROM overridespelldata_dbc WHERE
    id=@id
;

INSERT INTO overridespelldata_dbc (
    id,
    spells_1,
    spells_2,
    spells_3,
    spells_4,
    spells_5,
    spells_6,
    spells_7,
    spells_8,
    spells_9,
    spells_10,
    flags
)
VALUES (
    @id,
    @spells_1,
    @spells_2,
    @spells_3,
    @spells_4,
    @spells_5,
    @spells_6,
    @spells_7,
    @spells_8,
    @spells_9,
    @spells_10,
    @flags
);

-- END: overridespelldata_dbc