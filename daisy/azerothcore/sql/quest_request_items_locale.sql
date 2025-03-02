
-- START quest_request_items_locale
SET
@id := {id},
@locale := "{locale}",
@completiontext := "{completiontext}",
@verifiedbuild := {verifiedbuild};

DELETE FROM quest_request_items_locale WHERE
    id=@id AND
    locale=@locale
;

INSERT INTO quest_request_items_locale (
    `id`,
    `locale`,
    `completiontext`,
    `verifiedbuild`
)
VALUES (
    @id,
    @locale,
    @completiontext,
    @verifiedbuild
);
-- EOF quest_request_items_locale