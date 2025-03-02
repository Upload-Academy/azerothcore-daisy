
-- START spelldifficulty_dbc
SET
@id := {id},
@difficultyspellid_1 := {difficultyspellid_1},
@difficultyspellid_2 := {difficultyspellid_2},
@difficultyspellid_3 := {difficultyspellid_3},
@difficultyspellid_4 := {difficultyspellid_4};

DELETE FROM spelldifficulty_dbc WHERE
    id=@id
;

INSERT INTO spelldifficulty_dbc (
    `id`,
    `difficultyspellid_1`,
    `difficultyspellid_2`,
    `difficultyspellid_3`,
    `difficultyspellid_4`
)
VALUES (
    @id,
    @difficultyspellid_1,
    @difficultyspellid_2,
    @difficultyspellid_3,
    @difficultyspellid_4
);
-- EOF spelldifficulty_dbc