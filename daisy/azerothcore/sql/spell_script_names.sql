
-- START spell_script_names
SET
@spell_id := {spell_id},
@scriptname := "{scriptname}";

DELETE FROM spell_script_names WHERE
    spell_id=@spell_id AND
    scriptname=@scriptname
;

INSERT INTO spell_script_names (
    `spell_id`,
    `scriptname`
)
VALUES (
    @spell_id,
    @scriptname
);
-- EOF spell_script_names