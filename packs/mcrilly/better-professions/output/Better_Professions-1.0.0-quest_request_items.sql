
-- START quest_request_items
SET
@id := 101130001,
@emoteoncomplete := 4,
@emoteonincomplete := 5,
@completiontext := "Wow! Thank you!",
@verifiedbuild := 0;

DELETE FROM quest_request_items WHERE
    id=@id
;

INSERT INTO quest_request_items (
    `id`,
    `emoteoncomplete`,
    `emoteonincomplete`,
    `completiontext`,
    `verifiedbuild`
)
VALUES (
    @id,
    @emoteoncomplete,
    @emoteonincomplete,
    @completiontext,
    @verifiedbuild
);
-- EOF quest_request_items