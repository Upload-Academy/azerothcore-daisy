-- BEGIN: creaturedisplayinfo_dbc
SET
@id := {id},
@modelid := {modelid},
@soundid := {soundid},
@extendeddisplayinfoid := {extendeddisplayinfoid},
@creaturemodelscale := {creaturemodelscale},
@creaturemodelalpha := {creaturemodelalpha},
@texturevariation_1 := '{texturevariation_1}',
@texturevariation_2 := '{texturevariation_2}',
@texturevariation_3 := '{texturevariation_3}',
@portraittexturename := '{portraittexturename}',
@bloodlevel := {bloodlevel},
@bloodid := {bloodid},
@npcsoundid := {npcsoundid},
@particlecolorid := {particlecolorid},
@creaturegeosetdata := {creaturegeosetdata},
@objecteffectpackageid := {objecteffectpackageid};

DELETE FROM creaturedisplayinfo_dbc WHERE
    id=@id
;

INSERT INTO creaturedisplayinfo_dbc (
    id,
    modelid,
    soundid,
    extendeddisplayinfoid,
    creaturemodelscale,
    creaturemodelalpha,
    texturevariation_1,
    texturevariation_2,
    texturevariation_3,
    portraittexturename,
    bloodlevel,
    bloodid,
    npcsoundid,
    particlecolorid,
    creaturegeosetdata,
    objecteffectpackageid
)
VALUES (
    @id,
    @modelid,
    @soundid,
    @extendeddisplayinfoid,
    @creaturemodelscale,
    @creaturemodelalpha,
    @texturevariation_1,
    @texturevariation_2,
    @texturevariation_3,
    @portraittexturename,
    @bloodlevel,
    @bloodid,
    @npcsoundid,
    @particlecolorid,
    @creaturegeosetdata,
    @objecteffectpackageid
);

-- END: creaturedisplayinfo_dbc