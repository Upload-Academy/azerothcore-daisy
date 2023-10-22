-- BEGIN: achievement_reward_locale
SET
@id := {id},
@locale := '{locale}',
@subject := '{subject}',
@text := '{text}';

DELETE FROM achievement_reward_locale WHERE
    id=@id AND
    locale=@locale
;

INSERT INTO achievement_reward_locale (
    id,
    locale,
    subject,
    text
)
VALUES (
    @id,
    @locale,
    @subject,
    @text
);

-- END: achievement_reward_locale