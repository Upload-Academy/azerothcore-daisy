
-- START glyphslot_dbc
SET
@id := {id},
@type := {type},
@tooltip := {tooltip};

DELETE FROM glyphslot_dbc WHERE
    id=@id
;

INSERT INTO glyphslot_dbc (
    id,
    type,
    tooltip
)
VALUES (
    @id,
    @type,
    @tooltip
);
-- EOF glyphslot_dbc