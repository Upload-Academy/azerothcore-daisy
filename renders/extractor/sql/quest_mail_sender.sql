-- BEGIN: quest_mail_sender
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

-- END: quest_mail_sender