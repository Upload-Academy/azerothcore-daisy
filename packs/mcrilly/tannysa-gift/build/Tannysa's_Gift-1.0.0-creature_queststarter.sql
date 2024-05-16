
-- START creature_queststarter
SET
@id := 5566,
@quest := 5566;

DELETE FROM creature_queststarter WHERE
    id=@id AND
    quest=@quest
;

INSERT INTO creature_queststarter (
    `id`,
    `quest`
)
VALUES (
    @id,
    @quest
);
-- EOF creature_queststarter