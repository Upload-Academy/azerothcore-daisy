
-- START quest_request_items
SET
@id := {id},
@emoteoncomplete := {emoteoncomplete},
@emoteonincomplete := {emoteonincomplete},
@completiontext := '{completiontext}',
@verifiedbuild := {verifiedbuild};

DELETE FROM quest_request_items WHERE
    id=@id
;

INSERT INTO quest_request_items (
    id,
    emoteoncomplete,
    emoteonincomplete,
    completiontext,
    verifiedbuild
)
VALUES (
    @id,
    @emoteoncomplete,
    @emoteonincomplete,
    @completiontext,
    @verifiedbuild
);
-- EOF quest_request_items