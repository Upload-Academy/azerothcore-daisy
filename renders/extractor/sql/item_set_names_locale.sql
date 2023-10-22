-- BEGIN: item_set_names_locale
SET
@id := {id},
@locale := '{locale}',
@name := '{name}',
@verifiedbuild := {verifiedbuild};

DELETE FROM item_set_names_locale WHERE
    id=@id AND
    locale=@locale
;

INSERT INTO item_set_names_locale (
    id,
    locale,
    name,
    verifiedbuild
)
VALUES (
    @id,
    @locale,
    @name,
    @verifiedbuild
);

-- END: item_set_names_locale