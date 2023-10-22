
-- START emotestext_dbc
SET
@id := {id},
@name := '{name}',
@emoteid := {emoteid},
@emotetext_1 := {emotetext_1},
@emotetext_2 := {emotetext_2},
@emotetext_3 := {emotetext_3},
@emotetext_4 := {emotetext_4},
@emotetext_5 := {emotetext_5},
@emotetext_6 := {emotetext_6},
@emotetext_7 := {emotetext_7},
@emotetext_8 := {emotetext_8},
@emotetext_9 := {emotetext_9},
@emotetext_10 := {emotetext_10},
@emotetext_11 := {emotetext_11},
@emotetext_12 := {emotetext_12},
@emotetext_13 := {emotetext_13},
@emotetext_14 := {emotetext_14},
@emotetext_15 := {emotetext_15},
@emotetext_16 := {emotetext_16};

DELETE FROM emotestext_dbc WHERE
    id=@id
;

INSERT INTO emotestext_dbc (
    id,
    name,
    emoteid,
    emotetext_1,
    emotetext_2,
    emotetext_3,
    emotetext_4,
    emotetext_5,
    emotetext_6,
    emotetext_7,
    emotetext_8,
    emotetext_9,
    emotetext_10,
    emotetext_11,
    emotetext_12,
    emotetext_13,
    emotetext_14,
    emotetext_15,
    emotetext_16
)
VALUES (
    @id,
    @name,
    @emoteid,
    @emotetext_1,
    @emotetext_2,
    @emotetext_3,
    @emotetext_4,
    @emotetext_5,
    @emotetext_6,
    @emotetext_7,
    @emotetext_8,
    @emotetext_9,
    @emotetext_10,
    @emotetext_11,
    @emotetext_12,
    @emotetext_13,
    @emotetext_14,
    @emotetext_15,
    @emotetext_16
);
-- EOF emotestext_dbc