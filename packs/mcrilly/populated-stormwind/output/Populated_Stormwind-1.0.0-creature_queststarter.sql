
-- START creature_queststarter
SET
@id := 5110002,
@quest := 5150001;

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
-- START creature_queststarter
SET
@id := 5110002,
@quest := 5150002;

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
-- START creature_queststarter
SET
@id := 5110002,
@quest := 5150003;

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