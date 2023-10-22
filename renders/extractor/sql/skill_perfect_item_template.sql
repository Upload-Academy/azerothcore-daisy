
-- START skill_perfect_item_template
SET
@spellid := {spellid},
@requiredspecialization := {requiredspecialization},
@perfectcreatechance := {perfectcreatechance},
@perfectitemtype := {perfectitemtype};

DELETE FROM skill_perfect_item_template WHERE
    spellid=@spellid
;

INSERT INTO skill_perfect_item_template (
    spellid,
    requiredspecialization,
    perfectcreatechance,
    perfectitemtype
)
VALUES (
    @spellid,
    @requiredspecialization,
    @perfectcreatechance,
    @perfectitemtype
);
-- EOF skill_perfect_item_template