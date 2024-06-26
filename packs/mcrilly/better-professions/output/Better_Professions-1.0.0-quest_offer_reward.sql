
-- START quest_offer_reward
SET
@id := 101130001,
@emote1 := 0,
@emote2 := 0,
@emote3 := 0,
@emote4 := 0,
@emotedelay1 := 0,
@emotedelay2 := 0,
@emotedelay3 := 0,
@emotedelay4 := 0,
@rewardtext := "Thank you! The kids will be thrilled! We don't have much, but here... you can have whatever the kids have found around the city and dumped in this box.
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
@id := 101130002,
@emote1 := 0,
@emote2 := 0,
@emote3 := 0,
@emote4 := 0,
@emotedelay1 := 0,
@emotedelay2 := 0,
@emotedelay3 := 0,
@emotedelay4 := 0,
@rewardtext := "Thank you! You've just made our day! Now if you'll excuse me, I have to go get dinner ready.
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