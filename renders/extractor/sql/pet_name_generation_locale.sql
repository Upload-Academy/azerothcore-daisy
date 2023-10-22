
-- START pet_name_generation_locale
SET
@id := {id},
@locale := '{locale}',
@word := '{word}',
@entry := {entry},
@half := {half};

DELETE FROM pet_name_generation_locale WHERE
    id=@id AND
    locale=@locale
;

INSERT INTO pet_name_generation_locale (
    id,
    locale,
    word,
    entry,
    half
)
VALUES (
    @id,
    @locale,
    @word,
    @entry,
    @half
);
-- EOF pet_name_generation_locale