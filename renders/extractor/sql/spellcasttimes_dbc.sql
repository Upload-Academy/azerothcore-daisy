-- BEGIN: spellcasttimes_dbc
SET
@id := {id},
@base := {base},
@perlevel := {perlevel},
@minimum := {minimum};

DELETE FROM spellcasttimes_dbc WHERE
    id=@id
;

INSERT INTO spellcasttimes_dbc (
    id,
    base,
    perlevel,
    minimum
)
VALUES (
    @id,
    @base,
    @perlevel,
    @minimum
);

-- END: spellcasttimes_dbc