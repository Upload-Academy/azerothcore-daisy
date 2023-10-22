-- BEGIN: namesprofanity_dbc
SET
@id := {id},
@pattern := '{pattern}',
@languagueid := {languagueid};

DELETE FROM namesprofanity_dbc WHERE
    id=@id
;

INSERT INTO namesprofanity_dbc (
    id,
    pattern,
    languagueid
)
VALUES (
    @id,
    @pattern,
    @languagueid
);

-- END: namesprofanity_dbc