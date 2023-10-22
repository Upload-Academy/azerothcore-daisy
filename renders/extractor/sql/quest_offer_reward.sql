-- BEGIN: quest_offer_reward
SET
@id := {id},
@emote1 := {emote1},
@emote2 := {emote2},
@emote3 := {emote3},
@emote4 := {emote4},
@emotedelay1 := {emotedelay1},
@emotedelay2 := {emotedelay2},
@emotedelay3 := {emotedelay3},
@emotedelay4 := {emotedelay4},
@rewardtext := '{rewardtext}',
@verifiedbuild := {verifiedbuild};

DELETE FROM quest_offer_reward WHERE
    id=@id
;

INSERT INTO quest_offer_reward (
    id,
    emote1,
    emote2,
    emote3,
    emote4,
    emotedelay1,
    emotedelay2,
    emotedelay3,
    emotedelay4,
    rewardtext,
    verifiedbuild
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

-- END: quest_offer_reward