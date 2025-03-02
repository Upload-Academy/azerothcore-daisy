
-- START playercreateinfo_action
SET
@race := {race},
@_class := {_class},
@button := {button},
@action := {action},
@type := {type};

DELETE FROM playercreateinfo_action WHERE
    race=@race AND
    _class=@_class AND
    button=@button
;

INSERT INTO playercreateinfo_action (
    `race`,
    `class`,
    `button`,
    `action`,
    `type`
)
VALUES (
    @race,
    @_class,
    @button,
    @action,
    @type
);
-- EOF playercreateinfo_action