
-- START gtregenhpperspt_dbc
SET
@id := {id},
@data := {data};

DELETE FROM gtregenhpperspt_dbc WHERE
    id=@id
;

INSERT INTO gtregenhpperspt_dbc (
    `id`,
    `data`
)
VALUES (
    @id,
    @data
);
-- EOF gtregenhpperspt_dbc