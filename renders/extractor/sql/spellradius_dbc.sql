
-- START spellradius_dbc
SET
@id := {id},
@radius := {radius},
@radiusperlevel := {radiusperlevel},
@radiusmax := {radiusmax};

DELETE FROM spellradius_dbc WHERE
    id=@id
;

INSERT INTO spellradius_dbc (
    id,
    radius,
    radiusperlevel,
    radiusmax
)
VALUES (
    @id,
    @radius,
    @radiusperlevel,
    @radiusmax
);
-- EOF spellradius_dbc