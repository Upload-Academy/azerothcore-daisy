
-- START achievement_criteria_data
SET
@criteria_id := {criteria_id},
@type := {type},
@value1 := {value1},
@value2 := {value2},
@scriptname := '{scriptname}';

DELETE FROM achievement_criteria_data WHERE
    criteria_id=@criteria_id AND
    type=@type
;

INSERT INTO achievement_criteria_data (
    criteria_id,
    type,
    value1,
    value2,
    scriptname
)
VALUES (
    @criteria_id,
    @type,
    @value1,
    @value2,
    @scriptname
);
-- EOF achievement_criteria_data