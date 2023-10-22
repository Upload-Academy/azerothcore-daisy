-- BEGIN: playercreateinfo_cast_spell
SET
@racemask := {racemask},
@classmask := {classmask},
@spell := {spell},
@note := '{note}';

DELETE FROM playercreateinfo_cast_spell WHERE
;

INSERT INTO playercreateinfo_cast_spell (
    racemask,
    classmask,
    spell,
    note
)
VALUES (
    @racemask,
    @classmask,
    @spell,
    @note
);

-- END: playercreateinfo_cast_spell