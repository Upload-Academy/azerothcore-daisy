-- BEGIN: item_template_locale
SET
@id := {id},
@locale := '{locale}',
@name := '{name}',
@description := '{description}',
@verifiedbuild := {verifiedbuild};

DELETE FROM item_template_locale WHERE
    id=@id AND
    locale=@locale
;

INSERT INTO item_template_locale (
    id,
    locale,
    name,
    description,
    verifiedbuild
)
VALUES (
    @id,
    @locale,
    @name,
    @description,
    @verifiedbuild
);

-- END: item_template_locale