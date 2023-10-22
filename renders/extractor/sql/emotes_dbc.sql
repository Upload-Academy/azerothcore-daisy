-- BEGIN: emotes_dbc
SET
@id := {id},
@emoteslashcommand := '{emoteslashcommand}',
@animid := {animid},
@emoteflags := {emoteflags},
@emotespecproc := {emotespecproc},
@emotespecprocparam := {emotespecprocparam},
@eventsoundid := {eventsoundid};

DELETE FROM emotes_dbc WHERE
    id=@id
;

INSERT INTO emotes_dbc (
    id,
    emoteslashcommand,
    animid,
    emoteflags,
    emotespecproc,
    emotespecprocparam,
    eventsoundid
)
VALUES (
    @id,
    @emoteslashcommand,
    @animid,
    @emoteflags,
    @emotespecproc,
    @emotespecprocparam,
    @eventsoundid
);

-- END: emotes_dbc