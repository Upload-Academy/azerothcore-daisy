
-- START gameobject_questitem
SET
@gameobjectentry := {gameobjectentry},
@idx := {idx},
@itemid := {itemid},
@verifiedbuild := {verifiedbuild};

DELETE FROM gameobject_questitem WHERE
    gameobjectentry=@gameobjectentry AND
    idx=@idx
;

INSERT INTO gameobject_questitem (
    gameobjectentry,
    idx,
    itemid,
    verifiedbuild
)
VALUES (
    @gameobjectentry,
    @idx,
    @itemid,
    @verifiedbuild
);
-- EOF gameobject_questitem