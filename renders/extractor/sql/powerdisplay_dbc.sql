-- BEGIN: powerdisplay_dbc
SET
@id := {id},
@actualtype := {actualtype},
@globalstringbasetag := '{globalstringbasetag}',
@red := {red},
@green := {green},
@blue := {blue};

DELETE FROM powerdisplay_dbc WHERE
    id=@id
;

INSERT INTO powerdisplay_dbc (
    id,
    actualtype,
    globalstringbasetag,
    red,
    green,
    blue
)
VALUES (
    @id,
    @actualtype,
    @globalstringbasetag,
    @red,
    @green,
    @blue
);

-- END: powerdisplay_dbc