
-- START gtchancetospellcrit_dbc
SET
@id := {id},
@data := {data};

DELETE FROM gtchancetospellcrit_dbc WHERE
    id=@id
;

INSERT INTO gtchancetospellcrit_dbc (
    `id`,
    `data`
)
VALUES (
    @id,
    @data
);
-- EOF gtchancetospellcrit_dbc