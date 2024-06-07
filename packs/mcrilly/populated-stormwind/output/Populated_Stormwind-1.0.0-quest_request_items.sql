
-- START quest_request_items
SET
@id := 5150001,
@emoteoncomplete := 4,
@emoteonincomplete := 5,
@completiontext := "Excellent! Here's your pay, and remember to keep 'em comin!",
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
@id := 5150002,
@emoteoncomplete := 4,
@emoteonincomplete := 5,
@completiontext := "Excellent! Here's your pay, and remember to keep 'em comin!",
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
@id := 5150003,
@emoteoncomplete := 4,
@emoteonincomplete := 5,
@completiontext := "Excellent! Here's your pay, and remember to keep 'em comin!",
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