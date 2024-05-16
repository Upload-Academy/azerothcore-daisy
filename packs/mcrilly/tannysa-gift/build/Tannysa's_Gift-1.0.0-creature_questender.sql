
-- START creature_questender
SET
@id := 5566,
@quest := 5566;

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