
-- START player_class_stats
SET
@class := {class},
@level := {level},
@basehp := {basehp},
@basemana := {basemana},
@strength := {strength},
@agility := {agility},
@stamina := {stamina},
@intellect := {intellect},
@spirit := {spirit};

DELETE FROM player_class_stats WHERE
    class=@class AND
    level=@level
;

INSERT INTO player_class_stats (
    class,
    level,
    basehp,
    basemana,
    strength,
    agility,
    stamina,
    intellect,
    spirit
)
VALUES (
    @class,
    @level,
    @basehp,
    @basemana,
    @strength,
    @agility,
    @stamina,
    @intellect,
    @spirit
);
-- EOF player_class_stats