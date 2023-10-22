
-- START quest_poi_points
SET
@questid := {questid},
@idx1 := {idx1},
@idx2 := {idx2},
@x := {x},
@y := {y},
@verifiedbuild := {verifiedbuild};

DELETE FROM quest_poi_points WHERE
    questid=@questid AND
    idx1=@idx1 AND
    idx2=@idx2
;

INSERT INTO quest_poi_points (
    questid,
    idx1,
    idx2,
    x,
    y,
    verifiedbuild
)
VALUES (
    @questid,
    @idx1,
    @idx2,
    @x,
    @y,
    @verifiedbuild
);
-- EOF quest_poi_points