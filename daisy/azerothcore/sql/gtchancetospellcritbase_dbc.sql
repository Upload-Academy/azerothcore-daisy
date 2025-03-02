
-- START gtchancetospellcritbase_dbc
SET
@id := {id},
@data := {data};

DELETE FROM gtchancetospellcritbase_dbc WHERE
    id=@id
;

INSERT INTO gtchancetospellcritbase_dbc (
    `id`,
    `data`
)
VALUES (
    @id,
    @data
);
-- EOF gtchancetospellcritbase_dbc