-- BEGIN: gtoctregenhp_dbc
SET
@id := {id},
@data := {data};

DELETE FROM gtoctregenhp_dbc WHERE
    id=@id
;

INSERT INTO gtoctregenhp_dbc (
    id,
    data
)
VALUES (
    @id,
    @data
);

-- END: gtoctregenhp_dbc