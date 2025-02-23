
-- START page_text
SET
@id := 5000,
@text := "u smell something funny... whomever smelled it, dealt it",
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