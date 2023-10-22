-- BEGIN: gtcombatratings_dbc
SET
@id := {id},
@data := {data};

DELETE FROM gtcombatratings_dbc WHERE
    id=@id
;

INSERT INTO gtcombatratings_dbc (
    id,
    data
)
VALUES (
    @id,
    @data
);

-- END: gtcombatratings_dbc