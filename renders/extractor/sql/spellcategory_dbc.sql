
-- START spellcategory_dbc
SET
@id := {id},
@flags := {flags};

DELETE FROM spellcategory_dbc WHERE
    id=@id
;

INSERT INTO spellcategory_dbc (
    id,
    flags
)
VALUES (
    @id,
    @flags
);
-- EOF spellcategory_dbc