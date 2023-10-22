-- BEGIN: player_loot_template
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

DELETE FROM player_loot_template WHERE
    entry=@entry AND
    item=@item
;

INSERT INTO player_loot_template (
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

-- END: player_loot_template