
-- START playercreateinfo_item
SET
@race := {race},
@_class := {_class},
@itemid := {itemid},
@amount := {amount},
@note := "{note}";

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