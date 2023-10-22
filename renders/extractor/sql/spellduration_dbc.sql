-- BEGIN: spellduration_dbc
SET
@id := {id},
@duration := {duration},
@durationperlevel := {durationperlevel},
@maxduration := {maxduration};

DELETE FROM spellduration_dbc WHERE
    id=@id
;

INSERT INTO spellduration_dbc (
    id,
    duration,
    durationperlevel,
    maxduration
)
VALUES (
    @id,
    @duration,
    @durationperlevel,
    @maxduration
);

-- END: spellduration_dbc