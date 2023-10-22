-- BEGIN: instance_template
SET
@map := {map},
@parent := {parent},
@script := '{script}',
@allowmount := {allowmount};

DELETE FROM instance_template WHERE
    map=@map
;

INSERT INTO instance_template (
    map,
    parent,
    script,
    allowmount
)
VALUES (
    @map,
    @parent,
    @script,
    @allowmount
);

-- END: instance_template