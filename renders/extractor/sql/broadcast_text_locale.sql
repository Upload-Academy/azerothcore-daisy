
-- START broadcast_text_locale
SET
@id := {id},
@locale := '{locale}',
@maletext := '{maletext}',
@femaletext := '{femaletext}',
@verifiedbuild := {verifiedbuild};

DELETE FROM broadcast_text_locale WHERE
    id=@id AND
    locale=@locale
;

INSERT INTO broadcast_text_locale (
    id,
    locale,
    maletext,
    femaletext,
    verifiedbuild
)
VALUES (
    @id,
    @locale,
    @maletext,
    @femaletext,
    @verifiedbuild
);
-- EOF broadcast_text_locale