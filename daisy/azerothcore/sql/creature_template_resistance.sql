
-- START creature_template_resistance
SET
@creatureid := {creatureid},
@school := {school},
@resistance := {resistance},
@verifiedbuild := {verifiedbuild};

DELETE FROM creature_template_resistance WHERE
    creatureid=@creatureid AND
    school=@school
;

INSERT INTO creature_template_resistance (
    `creatureid`,
    `school`,
    `resistance`,
    `verifiedbuild`
)
VALUES (
    @creatureid,
    @school,
    @resistance,
    @verifiedbuild
);
-- EOF creature_template_resistance