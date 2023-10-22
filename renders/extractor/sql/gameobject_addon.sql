
-- START gameobject_addon
SET
@guid := {guid},
@invisibilitytype := {invisibilitytype},
@invisibilityvalue := {invisibilityvalue};

DELETE FROM gameobject_addon WHERE
    guid=@guid
;

INSERT INTO gameobject_addon (
    guid,
    invisibilitytype,
    invisibilityvalue
)
VALUES (
    @guid,
    @invisibilitytype,
    @invisibilityvalue
);
-- EOF gameobject_addon