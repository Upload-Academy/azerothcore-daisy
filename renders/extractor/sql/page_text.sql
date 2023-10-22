-- BEGIN: page_text
SET
@id := {id},
@text := '{text}',
@nextpageid := {nextpageid},
@verifiedbuild := {verifiedbuild};

DELETE FROM page_text WHERE
    id=@id
;

INSERT INTO page_text (
    id,
    text,
    nextpageid,
    verifiedbuild
)
VALUES (
    @id,
    @text,
    @nextpageid,
    @verifiedbuild
);

-- END: page_text