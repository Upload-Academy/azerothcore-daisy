-- BEGIN: creature_loot_template
SET
@entry := {entry},
@item := {item},
@reference := {reference},
@chance := {chance},
@questrequired := {questrequired},
@lootmode := {lootmode},
@groupid := {groupid},
@mincount := {mincount},
@maxcount := {maxcount},
@comment := '{comment}';

DELETE FROM creature_loot_template WHERE
    entry=@entry AND
    item=@item AND
    reference=@reference AND
    groupid=@groupid
;

INSERT INTO creature_loot_template (
    entry,
    item,
    reference,
    chance,
    questrequired,
    lootmode,
    groupid,
    mincount,
    maxcount,
    comment
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

-- END: creature_loot_template