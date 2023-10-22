-- BEGIN: quest_greeting_locale
SET
@id := {id},
@type := {type},
@locale := '{locale}',
@greeting := '{greeting}',
@verifiedbuild := {verifiedbuild};

DELETE FROM quest_greeting_locale WHERE
    id=@id AND
    type=@type AND
    locale=@locale
;

INSERT INTO quest_greeting_locale (
    id,
    type,
    locale,
    greeting,
    verifiedbuild
)
VALUES (
    @id,
    @type,
    @locale,
    @greeting,
    @verifiedbuild
);

-- END: quest_greeting_locale