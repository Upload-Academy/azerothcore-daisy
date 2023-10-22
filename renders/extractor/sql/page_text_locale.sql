-- BEGIN: page_text_locale
SET
@id := {id},
@locale := '{locale}',
@text := '{text}',
@verifiedbuild := {verifiedbuild};

DELETE FROM page_text_locale WHERE
    id=@id AND
    locale=@locale
;

INSERT INTO page_text_locale (
    id,
    locale,
    text,
    verifiedbuild
)
VALUES (
    @id,
    @locale,
    @text,
    @verifiedbuild
);

-- END: page_text_locale