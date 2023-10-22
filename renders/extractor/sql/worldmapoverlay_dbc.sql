
-- START worldmapoverlay_dbc
SET
@id := {id},
@mapareaid := {mapareaid},
@areaid_1 := {areaid_1},
@areaid_2 := {areaid_2},
@areaid_3 := {areaid_3},
@areaid_4 := {areaid_4},
@mappointx := {mappointx},
@mappointy := {mappointy},
@texturename := '{texturename}',
@texturewidth := {texturewidth},
@textureheight := {textureheight},
@offsetx := {offsetx},
@offsety := {offsety},
@hitrecttop := {hitrecttop},
@hitrectleft := {hitrectleft},
@hitrectbottom := {hitrectbottom},
@hitrectright := {hitrectright};

DELETE FROM worldmapoverlay_dbc WHERE
    id=@id
;

INSERT INTO worldmapoverlay_dbc (
    id,
    mapareaid,
    areaid_1,
    areaid_2,
    areaid_3,
    areaid_4,
    mappointx,
    mappointy,
    texturename,
    texturewidth,
    textureheight,
    offsetx,
    offsety,
    hitrecttop,
    hitrectleft,
    hitrectbottom,
    hitrectright
)
VALUES (
    @id,
    @mapareaid,
    @areaid_1,
    @areaid_2,
    @areaid_3,
    @areaid_4,
    @mappointx,
    @mappointy,
    @texturename,
    @texturewidth,
    @textureheight,
    @offsetx,
    @offsety,
    @hitrecttop,
    @hitrectleft,
    @hitrectbottom,
    @hitrectright
);
-- EOF worldmapoverlay_dbc