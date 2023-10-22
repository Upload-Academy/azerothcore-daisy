
-- START teamcontributionpoints_dbc
SET
@id := {id},
@data := {data};

DELETE FROM teamcontributionpoints_dbc WHERE
    id=@id
;

INSERT INTO teamcontributionpoints_dbc (
    id,
    data
)
VALUES (
    @id,
    @data
);
-- EOF teamcontributionpoints_dbc