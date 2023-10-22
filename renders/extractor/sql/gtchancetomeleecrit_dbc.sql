-- BEGIN: gtchancetomeleecrit_dbc
SET
@id := {id},
@data := {data};

DELETE FROM gtchancetomeleecrit_dbc WHERE
    id=@id
;

INSERT INTO gtchancetomeleecrit_dbc (
    id,
    data
)
VALUES (
    @id,
    @data
);

-- END: gtchancetomeleecrit_dbc