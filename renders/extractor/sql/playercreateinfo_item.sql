-- BEGIN: playercreateinfo_item
SET
@race := {race},
@class := {class},
@itemid := {itemid},
@amount := {amount},
@note := '{note}';

DELETE FROM playercreateinfo_item WHERE
    race=@race AND
    class=@class AND
    itemid=@itemid
;

INSERT INTO playercreateinfo_item (
    race,
    class,
    itemid,
    amount,
    note
)
VALUES (
    @race,
    @class,
    @itemid,
    @amount,
    @note
);

-- END: playercreateinfo_item