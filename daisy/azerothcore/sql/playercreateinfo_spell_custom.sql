
-- START playercreateinfo_spell_custom
SET
@racemask := {racemask},
@classmask := {classmask},
@spell := {spell},
@note := "{note}";

DELETE FROM playercreateinfo_spell_custom WHERE
    racemask=@racemask AND
    classmask=@classmask AND
    spell=@spell
;

INSERT INTO playercreateinfo_spell_custom (
    `racemask`,
    `classmask`,
    `spell`,
    `note`
)
VALUES (
    @racemask,
    @classmask,
    @spell,
    @note
);
-- EOF playercreateinfo_spell_custom