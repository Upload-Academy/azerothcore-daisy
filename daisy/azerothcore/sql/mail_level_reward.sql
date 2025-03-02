
-- START mail_level_reward
SET
@level := {level},
@racemask := {racemask},
@mailtemplateid := {mailtemplateid},
@senderentry := {senderentry};

DELETE FROM mail_level_reward WHERE
    level=@level AND
    racemask=@racemask
;

INSERT INTO mail_level_reward (
    `level`,
    `racemask`,
    `mailtemplateid`,
    `senderentry`
)
VALUES (
    @level,
    @racemask,
    @mailtemplateid,
    @senderentry
);
-- EOF mail_level_reward