
-- START points_of_interest_locale
SET
@id := {id},
@locale := "{locale}",
@name := "{name}",
@verifiedbuild := {verifiedbuild};

DELETE FROM points_of_interest_locale WHERE
    id=@id AND
    locale=@locale
;

INSERT INTO points_of_interest_locale (
    `id`,
    `locale`,
    `name`,
    `verifiedbuild`
)
VALUES (
    @id,
    @locale,
    @name,
    @verifiedbuild
);
-- EOF points_of_interest_locale