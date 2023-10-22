
-- START gtchancetomeleecritbase_dbc
SET
@id := {id},
@data := {data};

DELETE FROM gtchancetomeleecritbase_dbc WHERE
    id=@id
;

INSERT INTO gtchancetomeleecritbase_dbc (
    id,
    data
)
VALUES (
    @id,
    @data
);
-- EOF gtchancetomeleecritbase_dbc