-- BEGIN: areatrigger_scripts
SET
@entry := {entry},
@scriptname := '{scriptname}';

DELETE FROM areatrigger_scripts WHERE
    entry=@entry
;

INSERT INTO areatrigger_scripts (
    entry,
    scriptname
)
VALUES (
    @entry,
    @scriptname
);

-- END: areatrigger_scripts