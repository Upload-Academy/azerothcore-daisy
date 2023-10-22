
-- START game_graveyard
SET
@id := {id},
@map := {map},
@x := {x},
@y := {y},
@z := {z},
@comment := '{comment}';

DELETE FROM game_graveyard WHERE
    id=@id
;

INSERT INTO game_graveyard (
    id,
    map,
    x,
    y,
    z,
    comment
)
VALUES (
    @id,
    @map,
    @x,
    @y,
    @z,
    @comment
);
-- EOF game_graveyard