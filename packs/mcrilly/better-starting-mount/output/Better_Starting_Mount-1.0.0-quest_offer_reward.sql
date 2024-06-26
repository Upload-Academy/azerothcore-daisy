
-- START quest_offer_reward
SET
@id := 91100000,
@emote1 := 0,
@emote2 := 0,
@emote3 := 0,
@emote4 := 0,
@emotedelay1 := 0,
@emotedelay2 := 0,
@emotedelay3 := 0,
@emotedelay4 := 0,
@rewardtext := "Looks like you're some kind of great hero the King thinks highly of. I was ordered to give you this mount. Hope it helps, but don't think you'll get riding lessons for free. I gotta charge something, hero or not.
",
@verifiedbuild := 0;

DELETE FROM quest_offer_reward WHERE
    id=@id
;

INSERT INTO quest_offer_reward (
    `id`,
    `emote1`,
    `emote2`,
    `emote3`,
    `emote4`,
    `emotedelay1`,
    `emotedelay2`,
    `emotedelay3`,
    `emotedelay4`,
    `rewardtext`,
    `verifiedbuild`
)
VALUES (
    @id,
    @emote1,
    @emote2,
    @emote3,
    @emote4,
    @emotedelay1,
    @emotedelay2,
    @emotedelay3,
    @emotedelay4,
    @rewardtext,
    @verifiedbuild
);
-- EOF quest_offer_reward
-- START quest_offer_reward
SET
@id := 91100001,
@emote1 := 0,
@emote2 := 0,
@emote3 := 0,
@emote4 := 0,
@emotedelay1 := 0,
@emotedelay2 := 0,
@emotedelay3 := 0,
@emotedelay4 := 0,
@rewardtext := "Looks like you're some kind of great hero the Warchief thinks highly of. They told me to give you this mount. Hope it helps, but don't think you'll get riding lessons for free. I gotta charge something, hero or not.
",
@verifiedbuild := 0;

DELETE FROM quest_offer_reward WHERE
    id=@id
;

INSERT INTO quest_offer_reward (
    `id`,
    `emote1`,
    `emote2`,
    `emote3`,
    `emote4`,
    `emotedelay1`,
    `emotedelay2`,
    `emotedelay3`,
    `emotedelay4`,
    `rewardtext`,
    `verifiedbuild`
)
VALUES (
    @id,
    @emote1,
    @emote2,
    @emote3,
    @emote4,
    @emotedelay1,
    @emotedelay2,
    @emotedelay3,
    @emotedelay4,
    @rewardtext,
    @verifiedbuild
);
-- EOF quest_offer_reward