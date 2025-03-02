
-- START creature_template_model
SET
@creatureid := {creatureid},
@idx := {idx},
@creaturedisplayid := {creaturedisplayid},
@displayscale := {displayscale},
@probability := {probability},
@verifiedbuild := {verifiedbuild};

DELETE FROM creature_template_model WHERE
    creatureid=@creatureid AND
    idx=@idx
;

INSERT INTO creature_template_model (
    `creatureid`,
    `idx`,
    `creaturedisplayid`,
    `displayscale`,
    `probability`,
    `verifiedbuild`
)
VALUES (
    @creatureid,
    @idx,
    @creaturedisplayid,
    @displayscale,
    @probability,
    @verifiedbuild
);
-- EOF creature_template_model