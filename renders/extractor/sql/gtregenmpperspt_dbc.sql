
-- START gtregenmpperspt_dbc
SET
@id := {id},
@data := {data};

DELETE FROM gtregenmpperspt_dbc WHERE
    id=@id
;

INSERT INTO gtregenmpperspt_dbc (
    id,
    data
)
VALUES (
    @id,
    @data
);
-- EOF gtregenmpperspt_dbc