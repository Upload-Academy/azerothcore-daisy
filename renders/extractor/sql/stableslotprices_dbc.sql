-- BEGIN: stableslotprices_dbc
SET
@id := {id},
@cost := {cost};

DELETE FROM stableslotprices_dbc WHERE
    id=@id
;

INSERT INTO stableslotprices_dbc (
    id,
    cost
)
VALUES (
    @id,
    @cost
);

-- END: stableslotprices_dbc