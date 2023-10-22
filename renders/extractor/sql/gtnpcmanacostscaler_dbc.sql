-- BEGIN: gtnpcmanacostscaler_dbc
SET
@id := {id},
@data := {data};

DELETE FROM gtnpcmanacostscaler_dbc WHERE
    id=@id
;

INSERT INTO gtnpcmanacostscaler_dbc (
    id,
    data
)
VALUES (
    @id,
    @data
);

-- END: gtnpcmanacostscaler_dbc