-- BEGIN: quest_offer_reward_locale
SET
@id := {id},
@locale := '{locale}',
@rewardtext := '{rewardtext}',
@verifiedbuild := {verifiedbuild};

DELETE FROM quest_offer_reward_locale WHERE
    id=@id AND
    locale=@locale
;

INSERT INTO quest_offer_reward_locale (
    id,
    locale,
    rewardtext,
    verifiedbuild
)
VALUES (
    @id,
    @locale,
    @rewardtext,
    @verifiedbuild
);

-- END: quest_offer_reward_locale