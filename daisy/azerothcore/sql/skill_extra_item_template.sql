
-- START skill_extra_item_template
SET
@spellid := {spellid},
@requiredspecialization := {requiredspecialization},
@additionalcreatechance := {additionalcreatechance},
@additionalmaxnum := {additionalmaxnum};

DELETE FROM skill_extra_item_template WHERE
    spellid=@spellid
;

INSERT INTO skill_extra_item_template (
    `spellid`,
    `requiredspecialization`,
    `additionalcreatechance`,
    `additionalmaxnum`
)
VALUES (
    @spellid,
    @requiredspecialization,
    @additionalcreatechance,
    @additionalmaxnum
);
-- EOF skill_extra_item_template