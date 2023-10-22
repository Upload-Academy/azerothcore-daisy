
-- START taxipath_dbc
SET
@id := {id},
@fromtaxinode := {fromtaxinode},
@totaxinode := {totaxinode},
@cost := {cost};

DELETE FROM taxipath_dbc WHERE
    id=@id
;

INSERT INTO taxipath_dbc (
    id,
    fromtaxinode,
    totaxinode,
    cost
)
VALUES (
    @id,
    @fromtaxinode,
    @totaxinode,
    @cost
);
-- EOF taxipath_dbc