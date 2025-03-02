
-- START currencytypes_dbc
SET
@id := {id},
@itemid := {itemid},
@categoryid := {categoryid},
@bitindex := {bitindex};

DELETE FROM currencytypes_dbc WHERE
    id=@id
;

INSERT INTO currencytypes_dbc (
    `id`,
    `itemid`,
    `categoryid`,
    `bitindex`
)
VALUES (
    @id,
    @itemid,
    @categoryid,
    @bitindex
);
-- EOF currencytypes_dbc