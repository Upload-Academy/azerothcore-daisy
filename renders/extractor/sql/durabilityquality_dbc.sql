-- BEGIN: durabilityquality_dbc
SET
@id := {id},
@data := {data};

DELETE FROM durabilityquality_dbc WHERE
    id=@id
;

INSERT INTO durabilityquality_dbc (
    id,
    data
)
VALUES (
    @id,
    @data
);

-- END: durabilityquality_dbc