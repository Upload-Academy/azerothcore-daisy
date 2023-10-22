
-- START creature_text_locale
SET
@creatureid := {creatureid},
@groupid := {groupid},
@id := {id},
@locale := '{locale}',
@text := '{text}';

DELETE FROM creature_text_locale WHERE
    creatureid=@creatureid AND
    groupid=@groupid AND
    id=@id AND
    locale=@locale
;

INSERT INTO creature_text_locale (
    creatureid,
    groupid,
    id,
    locale,
    text
)
VALUES (
    @creatureid,
    @groupid,
    @id,
    @locale,
    @text
);
-- EOF creature_text_locale