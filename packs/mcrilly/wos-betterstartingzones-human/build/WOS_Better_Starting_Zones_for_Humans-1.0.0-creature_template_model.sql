
-- START creature_template_model
SET
@creatureid := 190000,
@idx := 0,
@creaturedisplayid := 559,
@displayscale := 2.5,
@probability := 1.0,
@verifiedbuild := 0;

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