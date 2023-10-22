-- BEGIN: gtoctclasscombatratingscalar_dbc
SET
@id := {id},
@data := {data};

DELETE FROM gtoctclasscombatratingscalar_dbc WHERE
    id=@id
;

INSERT INTO gtoctclasscombatratingscalar_dbc (
    id,
    data
)
VALUES (
    @id,
    @data
);

-- END: gtoctclasscombatratingscalar_dbc