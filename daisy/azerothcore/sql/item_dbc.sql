
-- START item_dbc
SET
@id := {id},
@classid := {classid},
@subclassid := {subclassid},
@sound_override_subclassid := {sound_override_subclassid},
@material := {material},
@displayinfoid := {displayinfoid},
@inventorytype := {inventorytype},
@sheathetype := {sheathetype};

DELETE FROM item_dbc WHERE
    id=@id
;

INSERT INTO item_dbc (
    `id`,
    `classid`,
    `subclassid`,
    `sound_override_subclassid`,
    `material`,
    `displayinfoid`,
    `inventorytype`,
    `sheathetype`
)
VALUES (
    @id,
    @classid,
    @subclassid,
    @sound_override_subclassid,
    @material,
    @displayinfoid,
    @inventorytype,
    @sheathetype
);
-- EOF item_dbc