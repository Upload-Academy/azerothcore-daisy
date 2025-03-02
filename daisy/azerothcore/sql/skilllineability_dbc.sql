
-- START skilllineability_dbc
SET
@id := {id},
@skillline := {skillline},
@spell := {spell},
@racemask := {racemask},
@classmask := {classmask},
@excluderace := {excluderace},
@excludeclass := {excludeclass},
@minskilllinerank := {minskilllinerank},
@supercededbyspell := {supercededbyspell},
@acquiremethod := {acquiremethod},
@trivialskilllinerankhigh := {trivialskilllinerankhigh},
@trivialskilllineranklow := {trivialskilllineranklow},
@characterpoints_1 := {characterpoints_1},
@characterpoints_2 := {characterpoints_2};

DELETE FROM skilllineability_dbc WHERE
    id=@id
;

INSERT INTO skilllineability_dbc (
    `id`,
    `skillline`,
    `spell`,
    `racemask`,
    `classmask`,
    `excluderace`,
    `excludeclass`,
    `minskilllinerank`,
    `supercededbyspell`,
    `acquiremethod`,
    `trivialskilllinerankhigh`,
    `trivialskilllineranklow`,
    `characterpoints_1`,
    `characterpoints_2`
)
VALUES (
    @id,
    @skillline,
    @spell,
    @racemask,
    @classmask,
    @excluderace,
    @excludeclass,
    @minskilllinerank,
    @supercededbyspell,
    @acquiremethod,
    @trivialskilllinerankhigh,
    @trivialskilllineranklow,
    @characterpoints_1,
    @characterpoints_2
);
-- EOF skilllineability_dbc