
-- START summonproperties_dbc
SET
@id := {id},
@control := {control},
@faction := {faction},
@title := {title},
@slot := {slot},
@flags := {flags};

DELETE FROM summonproperties_dbc WHERE
    id=@id
;

INSERT INTO summonproperties_dbc (
    id,
    control,
    faction,
    title,
    slot,
    flags
)
VALUES (
    @id,
    @control,
    @faction,
    @title,
    @slot,
    @flags
);
-- EOF summonproperties_dbc