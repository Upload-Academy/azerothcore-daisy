
-- START outdoorpvp_template
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
-- EOF outdoorpvp_template