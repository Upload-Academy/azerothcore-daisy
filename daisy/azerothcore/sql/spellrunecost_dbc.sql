
-- START spellrunecost_dbc
SET
@id := {id},
@blood := {blood},
@unholy := {unholy},
@frost := {frost},
@runicpower := {runicpower};

DELETE FROM spellrunecost_dbc WHERE
    id=@id
;

INSERT INTO spellrunecost_dbc (
    `id`,
    `blood`,
    `unholy`,
    `frost`,
    `runicpower`
)
VALUES (
    @id,
    @blood,
    @unholy,
    @frost,
    @runicpower
);
-- EOF spellrunecost_dbc