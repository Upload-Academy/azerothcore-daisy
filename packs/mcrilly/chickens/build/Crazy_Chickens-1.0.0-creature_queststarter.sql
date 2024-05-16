
-- START creature_queststarter
SET
@id := 250,
@quest := 500100;

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