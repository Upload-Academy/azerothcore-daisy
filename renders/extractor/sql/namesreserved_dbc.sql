-- BEGIN: namesreserved_dbc
SET
@id := {id},
@pattern := '{pattern}',
@languagueid := {languagueid};

DELETE FROM namesreserved_dbc WHERE
    id=@id
;

INSERT INTO namesreserved_dbc (
    id,
    pattern,
    languagueid
)
VALUES (
    @id,
    @pattern,
    @languagueid
);

-- END: namesreserved_dbc