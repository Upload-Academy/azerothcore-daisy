
-- START worldmaparea_dbc
SET
@id := {id},
@mapid := {mapid},
@areaid := {areaid},
@areaname := '{areaname}',
@locleft := {locleft},
@locright := {locright},
@loctop := {loctop},
@locbottom := {locbottom},
@displaymapid := {displaymapid},
@defaultdungeonfloor := {defaultdungeonfloor},
@parentworldmapid := {parentworldmapid};

DELETE FROM worldmaparea_dbc WHERE
    id=@id
;

INSERT INTO worldmaparea_dbc (
    id,
    mapid,
    areaid,
    areaname,
    locleft,
    locright,
    loctop,
    locbottom,
    displaymapid,
    defaultdungeonfloor,
    parentworldmapid
)
VALUES (
    @id,
    @mapid,
    @areaid,
    @areaname,
    @locleft,
    @locright,
    @loctop,
    @locbottom,
    @displaymapid,
    @defaultdungeonfloor,
    @parentworldmapid
);
-- EOF worldmaparea_dbc