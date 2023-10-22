-- BEGIN: gameobject_template_locale
SET
@entry := {entry},
@locale := '{locale}',
@name := '{name}',
@castbarcaption := '{castbarcaption}',
@verifiedbuild := {verifiedbuild};

DELETE FROM gameobject_template_locale WHERE
    entry=@entry AND
    locale=@locale
;

INSERT INTO gameobject_template_locale (
    entry,
    locale,
    name,
    castbarcaption,
    verifiedbuild
)
VALUES (
    @entry,
    @locale,
    @name,
    @castbarcaption,
    @verifiedbuild
);

-- END: gameobject_template_locale