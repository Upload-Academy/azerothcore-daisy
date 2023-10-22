-- BEGIN: outdoorpvp_template
SET
@typeid := {typeid},
@scriptname := '{scriptname}',
@comment := '{comment}';

DELETE FROM outdoorpvp_template WHERE
    typeid=@typeid
;

INSERT INTO outdoorpvp_template (
    typeid,
    scriptname,
    comment
)
VALUES (
    @typeid,
    @scriptname,
    @comment
);

-- END: outdoorpvp_template