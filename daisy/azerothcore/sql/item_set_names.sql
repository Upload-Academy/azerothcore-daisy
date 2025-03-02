
-- START item_set_names
SET
@entry := {entry},
@name := "{name}",
@inventorytype := {inventorytype},
@verifiedbuild := {verifiedbuild};

DELETE FROM item_set_names WHERE
    entry=@entry
;

INSERT INTO item_set_names (
    `entry`,
    `name`,
    `inventorytype`,
    `verifiedbuild`
)
VALUES (
    @entry,
    @name,
    @inventorytype,
    @verifiedbuild
);
-- EOF item_set_names