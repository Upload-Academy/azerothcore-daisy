
-- START creature_questender
SET
@id := 14497,
@quest := 101130001;

DELETE FROM creature_questender WHERE
    id=@id AND
    quest=@quest
;

INSERT INTO creature_questender (
    `id`,
    `quest`
)
VALUES (
    @id,
    @quest
);
-- EOF creature_questender