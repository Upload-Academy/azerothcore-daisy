
-- START bankbagslotprices_dbc
SET
@id := {id},
@cost := {cost};

DELETE FROM bankbagslotprices_dbc WHERE
    id=@id
;

INSERT INTO bankbagslotprices_dbc (
    `id`,
    `cost`
)
VALUES (
    @id,
    @cost
);
-- EOF bankbagslotprices_dbc