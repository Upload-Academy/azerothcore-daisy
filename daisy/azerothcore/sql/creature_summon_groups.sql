
-- START creature_summon_groups
SET
@summonerid := {summonerid},
@summonertype := {summonertype},
@groupid := {groupid},
@entry := {entry},
@position_x := {position_x},
@position_y := {position_y},
@position_z := {position_z},
@orientation := {orientation},
@summontype := {summontype},
@summontime := {summontime},
@comment := "{comment}";

DELETE FROM creature_summon_groups WHERE
;

INSERT INTO creature_summon_groups (
    `summonerid`,
    `summonertype`,
    `groupid`,
    `entry`,
    `position_x`,
    `position_y`,
    `position_z`,
    `orientation`,
    `summontype`,
    `summontime`,
    `comment`
)
VALUES (
    @summonerid,
    @summonertype,
    @groupid,
    @entry,
    @position_x,
    @position_y,
    @position_z,
    @orientation,
    @summontype,
    @summontime,
    @comment
);
-- EOF creature_summon_groups