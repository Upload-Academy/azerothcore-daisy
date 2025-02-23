
-- START page_text
SET
@id := 4000,
@text := "Hello, world!",
@nextpageid := 4001,
@verifiedbuild := 0;

DELETE FROM page_text WHERE
    id=@id
;

INSERT INTO page_text (
    `id`,
    `text`,
    `nextpageid`,
    `verifiedbuild`
)
VALUES (
    @id,
    @text,
    @nextpageid,
    @verifiedbuild
);
-- EOF page_text
-- START page_text
SET
@id := 4001,
@text := "Goodbye, world!",
@nextpageid := 0,
@verifiedbuild := 0;

DELETE FROM page_text WHERE
    id=@id
;

INSERT INTO page_text (
    `id`,
    `text`,
    `nextpageid`,
    `verifiedbuild`
)
VALUES (
    @id,
    @text,
    @nextpageid,
    @verifiedbuild
);
-- EOF page_text