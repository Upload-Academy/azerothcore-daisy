
-- START playercreateinfo_item
SET
@race := 0,
@_class := 0,
@itemid := 16057,
@amount := 1,
@note := "Explorer's Knapsack";

DELETE FROM playercreateinfo_item WHERE
    race=@race AND
    _class=@_class AND
    itemid=@itemid
;

INSERT INTO playercreateinfo_item (
    `race`,
    `class`,
    `itemid`,
    `amount`,
    `note`
)
VALUES (
    @race,
    @_class,
    @itemid,
    @amount,
    @note
);
-- EOF playercreateinfo_item