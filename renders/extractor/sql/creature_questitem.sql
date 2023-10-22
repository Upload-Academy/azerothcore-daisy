
-- START creature_questitem
SET
@creatureentry := {creatureentry},
@idx := {idx},
@itemid := {itemid},
@verifiedbuild := {verifiedbuild};

DELETE FROM creature_questitem WHERE
    creatureentry=@creatureentry AND
    idx=@idx
;

INSERT INTO creature_questitem (
    creatureentry,
    idx,
    itemid,
    verifiedbuild
)
VALUES (
    @creatureentry,
    @idx,
    @itemid,
    @verifiedbuild
);
-- EOF creature_questitem