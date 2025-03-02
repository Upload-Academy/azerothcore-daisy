
-- START glyphproperties_dbc
SET
@id := {id},
@spellid := {spellid},
@glyphslotflags := {glyphslotflags},
@spelliconid := {spelliconid};

DELETE FROM glyphproperties_dbc WHERE
    id=@id
;

INSERT INTO glyphproperties_dbc (
    `id`,
    `spellid`,
    `glyphslotflags`,
    `spelliconid`
)
VALUES (
    @id,
    @spellid,
    @glyphslotflags,
    @spelliconid
);
-- EOF glyphproperties_dbc