
-- START spell_custom_attr
SET
@spell_id := {spell_id},
@attributes := {attributes};

DELETE FROM spell_custom_attr WHERE
    spell_id=@spell_id
;

INSERT INTO spell_custom_attr (
    `spell_id`,
    `attributes`
)
VALUES (
    @spell_id,
    @attributes
);
-- EOF spell_custom_attr