
-- START movie_dbc
SET
@id := {id},
@filename := '{filename}',
@volume := {volume};

DELETE FROM movie_dbc WHERE
    id=@id
;

INSERT INTO movie_dbc (
    id,
    filename,
    volume
)
VALUES (
    @id,
    @filename,
    @volume
);
-- EOF movie_dbc