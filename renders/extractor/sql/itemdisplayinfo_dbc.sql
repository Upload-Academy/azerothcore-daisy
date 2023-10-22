-- BEGIN: itemdisplayinfo_dbc
SET
@id := {id},
@modelname_1 := '{modelname_1}',
@modelname_2 := '{modelname_2}',
@modeltexture_1 := '{modeltexture_1}',
@modeltexture_2 := '{modeltexture_2}',
@inventoryicon_1 := '{inventoryicon_1}',
@inventoryicon_2 := '{inventoryicon_2}',
@geosetgroup_1 := {geosetgroup_1},
@geosetgroup_2 := {geosetgroup_2},
@geosetgroup_3 := {geosetgroup_3},
@flags := {flags},
@spellvisualid := {spellvisualid},
@groupsoundindex := {groupsoundindex},
@helmetgeosetvis_1 := {helmetgeosetvis_1},
@helmetgeosetvis_2 := {helmetgeosetvis_2},
@texture_1 := '{texture_1}',
@texture_2 := '{texture_2}',
@texture_3 := '{texture_3}',
@texture_4 := '{texture_4}',
@texture_5 := '{texture_5}',
@texture_6 := '{texture_6}',
@texture_7 := '{texture_7}',
@texture_8 := '{texture_8}',
@itemvisual := {itemvisual},
@particlecolorid := {particlecolorid};

DELETE FROM itemdisplayinfo_dbc WHERE
    id=@id
;

INSERT INTO itemdisplayinfo_dbc (
    id,
    modelname_1,
    modelname_2,
    modeltexture_1,
    modeltexture_2,
    inventoryicon_1,
    inventoryicon_2,
    geosetgroup_1,
    geosetgroup_2,
    geosetgroup_3,
    flags,
    spellvisualid,
    groupsoundindex,
    helmetgeosetvis_1,
    helmetgeosetvis_2,
    texture_1,
    texture_2,
    texture_3,
    texture_4,
    texture_5,
    texture_6,
    texture_7,
    texture_8,
    itemvisual,
    particlecolorid
)
VALUES (
    @id,
    @modelname_1,
    @modelname_2,
    @modeltexture_1,
    @modeltexture_2,
    @inventoryicon_1,
    @inventoryicon_2,
    @geosetgroup_1,
    @geosetgroup_2,
    @geosetgroup_3,
    @flags,
    @spellvisualid,
    @groupsoundindex,
    @helmetgeosetvis_1,
    @helmetgeosetvis_2,
    @texture_1,
    @texture_2,
    @texture_3,
    @texture_4,
    @texture_5,
    @texture_6,
    @texture_7,
    @texture_8,
    @itemvisual,
    @particlecolorid
);

-- END: itemdisplayinfo_dbc