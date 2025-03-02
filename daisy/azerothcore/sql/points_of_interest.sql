
-- START points_of_interest
SET
@id := {id},
@positionx := {positionx},
@positiony := {positiony},
@icon := {icon},
@flags := {flags},
@importance := {importance},
@name := "{name}";

DELETE FROM points_of_interest WHERE
    id=@id
;

INSERT INTO points_of_interest (
    `id`,
    `positionx`,
    `positiony`,
    `icon`,
    `flags`,
    `importance`,
    `name`
)
VALUES (
    @id,
    @positionx,
    @positiony,
    @icon,
    @flags,
    @importance,
    @name
);
-- EOF points_of_interest