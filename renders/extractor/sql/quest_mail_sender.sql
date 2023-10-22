
-- START quest_mail_sender
SET
@questid := {questid},
@rewardmailsenderentry := {rewardmailsenderentry};

DELETE FROM quest_mail_sender WHERE
    questid=@questid
;

INSERT INTO quest_mail_sender (
    questid,
    rewardmailsenderentry
)
VALUES (
    @questid,
    @rewardmailsenderentry
);
-- EOF quest_mail_sender