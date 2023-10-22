-- BEGIN: npc_vendor
SET
@entry := {entry},
@slot := {slot},
@item := {item},
@maxcount := {maxcount},
@incrtime := {incrtime},
@extendedcost := {extendedcost},
@verifiedbuild := {verifiedbuild};

DELETE FROM npc_vendor WHERE
    entry=@entry AND
    item=@item AND
    extendedcost=@extendedcost
;

INSERT INTO npc_vendor (
    entry,
    slot,
    item,
    maxcount,
    incrtime,
    extendedcost,
    verifiedbuild
)
VALUES (
    @entry,
    @slot,
    @item,
    @maxcount,
    @incrtime,
    @extendedcost,
    @verifiedbuild
);

-- END: npc_vendor