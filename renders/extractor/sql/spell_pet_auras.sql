
-- START spell_pet_auras
SET
@spell := {spell},
@effectid := {effectid},
@pet := {pet},
@aura := {aura};

DELETE FROM spell_pet_auras WHERE
    spell=@spell AND
    effectid=@effectid AND
    pet=@pet
;

INSERT INTO spell_pet_auras (
    spell,
    effectid,
    pet,
    aura
)
VALUES (
    @spell,
    @effectid,
    @pet,
    @aura
);
-- EOF spell_pet_auras