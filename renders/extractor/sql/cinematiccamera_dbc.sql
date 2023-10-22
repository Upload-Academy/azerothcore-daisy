
-- START cinematiccamera_dbc
SET
@id := {id},
@model := '{model}',
@soundentry := {soundentry},
@locationx := {locationx},
@locationy := {locationy},
@locationz := {locationz},
@rotation := {rotation};

DELETE FROM cinematiccamera_dbc WHERE
    id=@id
;

INSERT INTO cinematiccamera_dbc (
    id,
    model,
    soundentry,
    locationx,
    locationy,
    locationz,
    rotation
)
VALUES (
    @id,
    @model,
    @soundentry,
    @locationx,
    @locationy,
    @locationz,
    @rotation
);
-- EOF cinematiccamera_dbc