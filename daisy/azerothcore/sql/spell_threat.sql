
-- START spell_threat
SET
@entry := {entry},
@flatmod := {flatmod},
@pctmod := {pctmod},
@appctmod := {appctmod};

DELETE FROM spell_threat WHERE
    entry=@entry
;

INSERT INTO spell_threat (
    `entry`,
    `flatmod`,
    `pctmod`,
    `appctmod`
)
VALUES (
    @entry,
    @flatmod,
    @pctmod,
    @appctmod
);
-- EOF spell_threat