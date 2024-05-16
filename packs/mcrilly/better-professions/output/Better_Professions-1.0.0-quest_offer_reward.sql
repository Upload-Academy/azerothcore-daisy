
-- START quest_offer_reward
SET
@id := 101130001,
@emote1 := 4,
@emote2 := 0,
@emote3 := 0,
@emote4 := 0,
@emotedelay1 := 750,
@emotedelay2 := 0,
@emotedelay3 := 0,
@emotedelay4 := 0,
@rewardtext := "You're a saint... thank you! The kids will be thrilled!
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