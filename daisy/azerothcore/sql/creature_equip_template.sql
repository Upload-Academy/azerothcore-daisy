
-- START creature_equip_template
SET
@creatureid := {creatureid},
@id := {id},
@itemid1 := {itemid1},
@itemid2 := {itemid2},
@itemid3 := {itemid3},
@verifiedbuild := {verifiedbuild};

DELETE FROM creature_equip_template WHERE
    creatureid=@creatureid AND
    id=@id
;

INSERT INTO creature_equip_template (
    `creatureid`,
    `id`,
    `itemid1`,
    `itemid2`,
    `itemid3`,
    `verifiedbuild`
)
VALUES (
    @creatureid,
    @id,
    @itemid1,
    @itemid2,
    @itemid3,
    @verifiedbuild
);
-- EOF creature_equip_template