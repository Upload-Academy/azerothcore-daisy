-- BEGIN: creature_template_locale
SET
@entry := {entry},
@locale := '{locale}',
@name := '{name}',
@title := '{title}',
@verifiedbuild := {verifiedbuild};

DELETE FROM creature_template_locale WHERE
    entry=@entry AND
    locale=@locale
;

INSERT INTO creature_template_locale (
    entry,
    locale,
    name,
    title,
    verifiedbuild
)
VALUES (
    @entry,
    @locale,
    @name,
    @title,
    @verifiedbuild
);

-- END: creature_template_locale