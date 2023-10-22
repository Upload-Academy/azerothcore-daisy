
-- START creature_template_spell
SET
@creatureid := {creatureid},
@index := {index},
@spell := {spell},
@verifiedbuild := {verifiedbuild};

DELETE FROM creature_template_spell WHERE
    creatureid=@creatureid AND
    index=@index
;

INSERT INTO creature_template_spell (
    creatureid,
    index,
    spell,
    verifiedbuild
)
VALUES (
    @creatureid,
    @index,
    @spell,
    @verifiedbuild
);
-- EOF creature_template_spell