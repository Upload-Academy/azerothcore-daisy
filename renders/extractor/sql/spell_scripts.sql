
-- START spell_scripts
SET
@id := {id},
@effindex := {effindex},
@delay := {delay},
@command := {command},
@datalong := {datalong},
@datalong2 := {datalong2},
@dataint := {dataint},
@x := {x},
@y := {y},
@z := {z},
@o := {o};

DELETE FROM spell_scripts WHERE
;

INSERT INTO spell_scripts (
    id,
    effindex,
    delay,
    command,
    datalong,
    datalong2,
    dataint,
    x,
    y,
    z,
    o
)
VALUES (
    @id,
    @effindex,
    @delay,
    @command,
    @datalong,
    @datalong2,
    @dataint,
    @x,
    @y,
    @z,
    @o
);
-- EOF spell_scripts