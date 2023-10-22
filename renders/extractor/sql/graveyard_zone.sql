
-- START graveyard_zone
SET
@id := {id},
@ghostzone := {ghostzone},
@faction := {faction},
@comment := '{comment}';

DELETE FROM graveyard_zone WHERE
    id=@id AND
    ghostzone=@ghostzone
;

INSERT INTO graveyard_zone (
    id,
    ghostzone,
    faction,
    comment
)
VALUES (
    @id,
    @ghostzone,
    @faction,
    @comment
);
-- EOF graveyard_zone