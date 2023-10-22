-- BEGIN: gemproperties_dbc
SET
@id := {id},
@enchant_id := {enchant_id},
@maxcount_inv := {maxcount_inv},
@maxcount_item := {maxcount_item},
@type := {type};

DELETE FROM gemproperties_dbc WHERE
    id=@id
;

INSERT INTO gemproperties_dbc (
    id,
    enchant_id,
    maxcount_inv,
    maxcount_item,
    type
)
VALUES (
    @id,
    @enchant_id,
    @maxcount_inv,
    @maxcount_item,
    @type
);

-- END: gemproperties_dbc