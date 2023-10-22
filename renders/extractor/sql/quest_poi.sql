
-- START quest_poi
SET
@questid := {questid},
@id := {id},
@objectiveindex := {objectiveindex},
@mapid := {mapid},
@worldmapareaid := {worldmapareaid},
@floor := {floor},
@priority := {priority},
@flags := {flags},
@verifiedbuild := {verifiedbuild};

DELETE FROM quest_poi WHERE
    questid=@questid AND
    id=@id
;

INSERT INTO quest_poi (
    questid,
    id,
    objectiveindex,
    mapid,
    worldmapareaid,
    floor,
    priority,
    flags,
    verifiedbuild
)
VALUES (
    @questid,
    @id,
    @objectiveindex,
    @mapid,
    @worldmapareaid,
    @floor,
    @priority,
    @flags,
    @verifiedbuild
);
-- EOF quest_poi