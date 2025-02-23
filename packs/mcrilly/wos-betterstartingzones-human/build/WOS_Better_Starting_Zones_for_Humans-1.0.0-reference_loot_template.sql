
-- START reference_loot_template
SET
@entry := 2000000,
@item := 60000,
@reference := 0,
@chance := 100,
@questrequired := 0,
@lootmode := 1,
@groupid := 1,
@mincount := 1,
@maxcount := 1,
@comment := "Book of Farts";

DELETE FROM reference_loot_template WHERE
    entry=@entry AND
    item=@item
;

INSERT INTO reference_loot_template (
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
-- EOF reference_loot_template