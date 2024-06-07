
-- START creature_questender
SET
@id := 5110002,
@quest := 5150001;

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
-- START creature_questender
SET
@id := 5110002,
@quest := 5150002;

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
-- START creature_questender
SET
@id := 5110002,
@quest := 5150003;

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