
-- START player_race_stats
SET
@race := {race},
@strength := {strength},
@agility := {agility},
@stamina := {stamina},
@intellect := {intellect},
@spirit := {spirit};

DELETE FROM player_race_stats WHERE
    race=@race
;

INSERT INTO player_race_stats (
    race,
    strength,
    agility,
    stamina,
    intellect,
    spirit
)
VALUES (
    @race,
    @strength,
    @agility,
    @stamina,
    @intellect,
    @spirit
);
-- EOF player_race_stats