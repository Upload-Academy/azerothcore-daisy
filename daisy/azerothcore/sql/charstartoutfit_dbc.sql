
-- START charstartoutfit_dbc
SET
@id := {id},
@raceid := {raceid},
@classid := {classid},
@sexid := {sexid},
@outfitid := {outfitid},
@itemid_1 := {itemid_1},
@itemid_2 := {itemid_2},
@itemid_3 := {itemid_3},
@itemid_4 := {itemid_4},
@itemid_5 := {itemid_5},
@itemid_6 := {itemid_6},
@itemid_7 := {itemid_7},
@itemid_8 := {itemid_8},
@itemid_9 := {itemid_9},
@itemid_10 := {itemid_10},
@itemid_11 := {itemid_11},
@itemid_12 := {itemid_12},
@itemid_13 := {itemid_13},
@itemid_14 := {itemid_14},
@itemid_15 := {itemid_15},
@itemid_16 := {itemid_16},
@itemid_17 := {itemid_17},
@itemid_18 := {itemid_18},
@itemid_19 := {itemid_19},
@itemid_20 := {itemid_20},
@itemid_21 := {itemid_21},
@itemid_22 := {itemid_22},
@itemid_23 := {itemid_23},
@itemid_24 := {itemid_24},
@displayitemid_1 := {displayitemid_1},
@displayitemid_2 := {displayitemid_2},
@displayitemid_3 := {displayitemid_3},
@displayitemid_4 := {displayitemid_4},
@displayitemid_5 := {displayitemid_5},
@displayitemid_6 := {displayitemid_6},
@displayitemid_7 := {displayitemid_7},
@displayitemid_8 := {displayitemid_8},
@displayitemid_9 := {displayitemid_9},
@displayitemid_10 := {displayitemid_10},
@displayitemid_11 := {displayitemid_11},
@displayitemid_12 := {displayitemid_12},
@displayitemid_13 := {displayitemid_13},
@displayitemid_14 := {displayitemid_14},
@displayitemid_15 := {displayitemid_15},
@displayitemid_16 := {displayitemid_16},
@displayitemid_17 := {displayitemid_17},
@displayitemid_18 := {displayitemid_18},
@displayitemid_19 := {displayitemid_19},
@displayitemid_20 := {displayitemid_20},
@displayitemid_21 := {displayitemid_21},
@displayitemid_22 := {displayitemid_22},
@displayitemid_23 := {displayitemid_23},
@displayitemid_24 := {displayitemid_24},
@inventorytype_1 := {inventorytype_1},
@inventorytype_2 := {inventorytype_2},
@inventorytype_3 := {inventorytype_3},
@inventorytype_4 := {inventorytype_4},
@inventorytype_5 := {inventorytype_5},
@inventorytype_6 := {inventorytype_6},
@inventorytype_7 := {inventorytype_7},
@inventorytype_8 := {inventorytype_8},
@inventorytype_9 := {inventorytype_9},
@inventorytype_10 := {inventorytype_10},
@inventorytype_11 := {inventorytype_11},
@inventorytype_12 := {inventorytype_12},
@inventorytype_13 := {inventorytype_13},
@inventorytype_14 := {inventorytype_14},
@inventorytype_15 := {inventorytype_15},
@inventorytype_16 := {inventorytype_16},
@inventorytype_17 := {inventorytype_17},
@inventorytype_18 := {inventorytype_18},
@inventorytype_19 := {inventorytype_19},
@inventorytype_20 := {inventorytype_20},
@inventorytype_21 := {inventorytype_21},
@inventorytype_22 := {inventorytype_22},
@inventorytype_23 := {inventorytype_23},
@inventorytype_24 := {inventorytype_24};

DELETE FROM charstartoutfit_dbc WHERE
    id=@id
;

INSERT INTO charstartoutfit_dbc (
    `id`,
    `raceid`,
    `classid`,
    `sexid`,
    `outfitid`,
    `itemid_1`,
    `itemid_2`,
    `itemid_3`,
    `itemid_4`,
    `itemid_5`,
    `itemid_6`,
    `itemid_7`,
    `itemid_8`,
    `itemid_9`,
    `itemid_10`,
    `itemid_11`,
    `itemid_12`,
    `itemid_13`,
    `itemid_14`,
    `itemid_15`,
    `itemid_16`,
    `itemid_17`,
    `itemid_18`,
    `itemid_19`,
    `itemid_20`,
    `itemid_21`,
    `itemid_22`,
    `itemid_23`,
    `itemid_24`,
    `displayitemid_1`,
    `displayitemid_2`,
    `displayitemid_3`,
    `displayitemid_4`,
    `displayitemid_5`,
    `displayitemid_6`,
    `displayitemid_7`,
    `displayitemid_8`,
    `displayitemid_9`,
    `displayitemid_10`,
    `displayitemid_11`,
    `displayitemid_12`,
    `displayitemid_13`,
    `displayitemid_14`,
    `displayitemid_15`,
    `displayitemid_16`,
    `displayitemid_17`,
    `displayitemid_18`,
    `displayitemid_19`,
    `displayitemid_20`,
    `displayitemid_21`,
    `displayitemid_22`,
    `displayitemid_23`,
    `displayitemid_24`,
    `inventorytype_1`,
    `inventorytype_2`,
    `inventorytype_3`,
    `inventorytype_4`,
    `inventorytype_5`,
    `inventorytype_6`,
    `inventorytype_7`,
    `inventorytype_8`,
    `inventorytype_9`,
    `inventorytype_10`,
    `inventorytype_11`,
    `inventorytype_12`,
    `inventorytype_13`,
    `inventorytype_14`,
    `inventorytype_15`,
    `inventorytype_16`,
    `inventorytype_17`,
    `inventorytype_18`,
    `inventorytype_19`,
    `inventorytype_20`,
    `inventorytype_21`,
    `inventorytype_22`,
    `inventorytype_23`,
    `inventorytype_24`
)
VALUES (
    @id,
    @raceid,
    @classid,
    @sexid,
    @outfitid,
    @itemid_1,
    @itemid_2,
    @itemid_3,
    @itemid_4,
    @itemid_5,
    @itemid_6,
    @itemid_7,
    @itemid_8,
    @itemid_9,
    @itemid_10,
    @itemid_11,
    @itemid_12,
    @itemid_13,
    @itemid_14,
    @itemid_15,
    @itemid_16,
    @itemid_17,
    @itemid_18,
    @itemid_19,
    @itemid_20,
    @itemid_21,
    @itemid_22,
    @itemid_23,
    @itemid_24,
    @displayitemid_1,
    @displayitemid_2,
    @displayitemid_3,
    @displayitemid_4,
    @displayitemid_5,
    @displayitemid_6,
    @displayitemid_7,
    @displayitemid_8,
    @displayitemid_9,
    @displayitemid_10,
    @displayitemid_11,
    @displayitemid_12,
    @displayitemid_13,
    @displayitemid_14,
    @displayitemid_15,
    @displayitemid_16,
    @displayitemid_17,
    @displayitemid_18,
    @displayitemid_19,
    @displayitemid_20,
    @displayitemid_21,
    @displayitemid_22,
    @displayitemid_23,
    @displayitemid_24,
    @inventorytype_1,
    @inventorytype_2,
    @inventorytype_3,
    @inventorytype_4,
    @inventorytype_5,
    @inventorytype_6,
    @inventorytype_7,
    @inventorytype_8,
    @inventorytype_9,
    @inventorytype_10,
    @inventorytype_11,
    @inventorytype_12,
    @inventorytype_13,
    @inventorytype_14,
    @inventorytype_15,
    @inventorytype_16,
    @inventorytype_17,
    @inventorytype_18,
    @inventorytype_19,
    @inventorytype_20,
    @inventorytype_21,
    @inventorytype_22,
    @inventorytype_23,
    @inventorytype_24
);
-- EOF charstartoutfit_dbc