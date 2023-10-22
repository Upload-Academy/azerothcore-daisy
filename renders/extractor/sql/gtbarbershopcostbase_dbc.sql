-- BEGIN: gtbarbershopcostbase_dbc
SET
@id := {id},
@data := {data};

DELETE FROM gtbarbershopcostbase_dbc WHERE
    id=@id
;

INSERT INTO gtbarbershopcostbase_dbc (
    id,
    data
)
VALUES (
    @id,
    @data
);

-- END: gtbarbershopcostbase_dbc