-- BEGIN: instance_encounters
SET
@entry := {entry},
@credittype := {credittype},
@creditentry := {creditentry},
@lastencounterdungeon := {lastencounterdungeon},
@comment := '{comment}';

DELETE FROM instance_encounters WHERE
    entry=@entry
;

INSERT INTO instance_encounters (
    entry,
    credittype,
    creditentry,
    lastencounterdungeon,
    comment
)
VALUES (
    @entry,
    @credittype,
    @creditentry,
    @lastencounterdungeon,
    @comment
);

-- END: instance_encounters