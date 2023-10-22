-- BEGIN: lfg_dungeon_rewards
SET
@dungeonid := {dungeonid},
@maxlevel := {maxlevel},
@firstquestid := {firstquestid},
@otherquestid := {otherquestid};

DELETE FROM lfg_dungeon_rewards WHERE
    dungeonid=@dungeonid AND
    maxlevel=@maxlevel
;

INSERT INTO lfg_dungeon_rewards (
    dungeonid,
    maxlevel,
    firstquestid,
    otherquestid
)
VALUES (
    @dungeonid,
    @maxlevel,
    @firstquestid,
    @otherquestid
);

-- END: lfg_dungeon_rewards