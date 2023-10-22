
-- START creature_text
SET
@creatureid := {creatureid},
@groupid := {groupid},
@id := {id},
@text := '{text}',
@type := {type},
@language := {language},
@probability := {probability},
@emote := {emote},
@duration := {duration},
@sound := {sound},
@broadcasttextid := {broadcasttextid},
@textrange := {textrange},
@comment := '{comment}';

DELETE FROM creature_text WHERE
    creatureid=@creatureid AND
    groupid=@groupid AND
    id=@id
;

INSERT INTO creature_text (
    creatureid,
    groupid,
    id,
    text,
    type,
    language,
    probability,
    emote,
    duration,
    sound,
    broadcasttextid,
    textrange,
    comment
)
VALUES (
    @creatureid,
    @groupid,
    @id,
    @text,
    @type,
    @language,
    @probability,
    @emote,
    @duration,
    @sound,
    @broadcasttextid,
    @textrange,
    @comment
);
-- EOF creature_text