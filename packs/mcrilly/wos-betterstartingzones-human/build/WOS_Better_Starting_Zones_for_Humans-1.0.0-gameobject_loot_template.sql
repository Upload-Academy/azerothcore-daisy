
-- START gameobject_loot_template
SET
@entry := 200000,
@item := 1,
@reference := 2000000,
@chance := 100.0,
@questrequired := 0,
@lootmode := 1,
@groupid := 1,
@mincount := 1,
@maxcount := 1,
@comment := "Book of Farts";

DELETE FROM gameobject_loot_template WHERE
    entry=@entry AND
    item=@item
;

INSERT INTO gameobject_loot_template (
    `entry`,
    `item`,
    `reference`,
    `chance`,
    `questrequired`,
    `lootmode`,
    `groupid`,
    `mincount`,
    `maxcount`,
    `comment`
)
VALUES (
    @entry,
    @item,
    @reference,
    @chance,
    @questrequired,
    @lootmode,
    @groupid,
    @mincount,
    @maxcount,
    @comment
);
-- EOF gameobject_loot_template