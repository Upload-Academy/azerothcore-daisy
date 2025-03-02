
-- START spell_mixology
SET
@entry := {entry},
@pctmod := {pctmod};

DELETE FROM spell_mixology WHERE
    entry=@entry
;

INSERT INTO spell_mixology (
    `entry`,
    `pctmod`
)
VALUES (
    @entry,
    @pctmod
);
-- EOF spell_mixology