
-- START itemextendedcost_dbc
SET
@id := {id},
@honorpoints := {honorpoints},
@arenapoints := {arenapoints},
@arenabracket := {arenabracket},
@itemid_1 := {itemid_1},
@itemid_2 := {itemid_2},
@itemid_3 := {itemid_3},
@itemid_4 := {itemid_4},
@itemid_5 := {itemid_5},
@itemcount_1 := {itemcount_1},
@itemcount_2 := {itemcount_2},
@itemcount_3 := {itemcount_3},
@itemcount_4 := {itemcount_4},
@itemcount_5 := {itemcount_5},
@requiredarenarating := {requiredarenarating},
@itempurchasegroup := {itempurchasegroup};

DELETE FROM itemextendedcost_dbc WHERE
    id=@id
;

INSERT INTO itemextendedcost_dbc (
    id,
    honorpoints,
    arenapoints,
    arenabracket,
    itemid_1,
    itemid_2,
    itemid_3,
    itemid_4,
    itemid_5,
    itemcount_1,
    itemcount_2,
    itemcount_3,
    itemcount_4,
    itemcount_5,
    requiredarenarating,
    itempurchasegroup
)
VALUES (
    @id,
    @honorpoints,
    @arenapoints,
    @arenabracket,
    @itemid_1,
    @itemid_2,
    @itemid_3,
    @itemid_4,
    @itemid_5,
    @itemcount_1,
    @itemcount_2,
    @itemcount_3,
    @itemcount_4,
    @itemcount_5,
    @requiredarenarating,
    @itempurchasegroup
);
-- EOF itemextendedcost_dbc