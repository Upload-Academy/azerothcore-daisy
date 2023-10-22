
-- START creature_formations
SET
@leaderguid := {leaderguid},
@memberguid := {memberguid},
@dist := {dist},
@angle := {angle},
@groupai := {groupai},
@point_1 := {point_1},
@point_2 := {point_2};

DELETE FROM creature_formations WHERE
    memberguid=@memberguid
;

INSERT INTO creature_formations (
    leaderguid,
    memberguid,
    dist,
    angle,
    groupai,
    point_1,
    point_2
)
VALUES (
    @leaderguid,
    @memberguid,
    @dist,
    @angle,
    @groupai,
    @point_1,
    @point_2
);
-- EOF creature_formations