
-- START skill_discovery_template
SET
@spellid := {spellid},
@reqspell := {reqspell},
@reqskillvalue := {reqskillvalue},
@chance := {chance};

DELETE FROM skill_discovery_template WHERE
    spellid=@spellid AND
    reqspell=@reqspell
;

INSERT INTO skill_discovery_template (
    spellid,
    reqspell,
    reqskillvalue,
    chance
)
VALUES (
    @spellid,
    @reqspell,
    @reqskillvalue,
    @chance
);
-- EOF skill_discovery_template