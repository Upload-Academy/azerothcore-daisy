
-- START talent_dbc
SET
@id := {id},
@tabid := {tabid},
@tierid := {tierid},
@columnindex := {columnindex},
@spellrank_1 := {spellrank_1},
@spellrank_2 := {spellrank_2},
@spellrank_3 := {spellrank_3},
@spellrank_4 := {spellrank_4},
@spellrank_5 := {spellrank_5},
@spellrank_6 := {spellrank_6},
@spellrank_7 := {spellrank_7},
@spellrank_8 := {spellrank_8},
@spellrank_9 := {spellrank_9},
@prereqtalent_1 := {prereqtalent_1},
@prereqtalent_2 := {prereqtalent_2},
@prereqtalent_3 := {prereqtalent_3},
@prereqrank_1 := {prereqrank_1},
@prereqrank_2 := {prereqrank_2},
@prereqrank_3 := {prereqrank_3},
@flags := {flags},
@requiredspellid := {requiredspellid},
@categorymask_1 := {categorymask_1},
@categorymask_2 := {categorymask_2};

DELETE FROM talent_dbc WHERE
    id=@id
;

INSERT INTO talent_dbc (
    id,
    tabid,
    tierid,
    columnindex,
    spellrank_1,
    spellrank_2,
    spellrank_3,
    spellrank_4,
    spellrank_5,
    spellrank_6,
    spellrank_7,
    spellrank_8,
    spellrank_9,
    prereqtalent_1,
    prereqtalent_2,
    prereqtalent_3,
    prereqrank_1,
    prereqrank_2,
    prereqrank_3,
    flags,
    requiredspellid,
    categorymask_1,
    categorymask_2
)
VALUES (
    @id,
    @tabid,
    @tierid,
    @columnindex,
    @spellrank_1,
    @spellrank_2,
    @spellrank_3,
    @spellrank_4,
    @spellrank_5,
    @spellrank_6,
    @spellrank_7,
    @spellrank_8,
    @spellrank_9,
    @prereqtalent_1,
    @prereqtalent_2,
    @prereqtalent_3,
    @prereqrank_1,
    @prereqrank_2,
    @prereqrank_3,
    @flags,
    @requiredspellid,
    @categorymask_1,
    @categorymask_2
);
-- EOF talent_dbc