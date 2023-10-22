-- BEGIN: disables
SET
@sourcetype := {sourcetype},
@entry := {entry},
@flags := {flags},
@params_0 := '{params_0}',
@params_1 := '{params_1}',
@comment := '{comment}';

DELETE FROM disables WHERE
    sourcetype=@sourcetype AND
    entry=@entry
;

INSERT INTO disables (
    sourcetype,
    entry,
    flags,
    params_0,
    params_1,
    comment
)
VALUES (
    @sourcetype,
    @entry,
    @flags,
    @params_0,
    @params_1,
    @comment
);

-- END: disables