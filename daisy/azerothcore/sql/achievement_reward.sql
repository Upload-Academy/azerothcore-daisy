
-- START achievement_reward
SET
@id := {id},
@titlea := {titlea},
@titleh := {titleh},
@itemid := {itemid},
@sender := {sender},
@subject := "{subject}",
@body := "{body}",
@mailtemplateid := {mailtemplateid};

DELETE FROM achievement_reward WHERE
    id=@id
;

INSERT INTO achievement_reward (
    `id`,
    `titlea`,
    `titleh`,
    `itemid`,
    `sender`,
    `subject`,
    `body`,
    `mailtemplateid`
)
VALUES (
    @id,
    @titlea,
    @titleh,
    @itemid,
    @sender,
    @subject,
    @body,
    @mailtemplateid
);
-- EOF achievement_reward