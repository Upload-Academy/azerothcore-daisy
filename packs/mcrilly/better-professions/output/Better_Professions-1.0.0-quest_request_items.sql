
-- START quest_request_items
SET
@id := 101130001,
@emoteoncomplete := 4,
@emoteonincomplete := 5,
@completiontext := "The kids are really suffering. Please do what you can to help.",
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
-- START quest_request_items
SET
@id := 101130002,
@emoteoncomplete := 4,
@emoteonincomplete := 5,
@completiontext := "Anything you can give us would be greatly appreciated.",
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