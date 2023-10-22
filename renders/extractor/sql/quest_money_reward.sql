-- BEGIN: quest_money_reward
SET
@level := {level},
@money0 := {money0},
@money1 := {money1},
@money2 := {money2},
@money3 := {money3},
@money4 := {money4},
@money5 := {money5},
@money6 := {money6},
@money7 := {money7},
@money8 := {money8},
@money9 := {money9};

DELETE FROM quest_money_reward WHERE
    level=@level
;

INSERT INTO quest_money_reward (
    level,
    money0,
    money1,
    money2,
    money3,
    money4,
    money5,
    money6,
    money7,
    money8,
    money9
)
VALUES (
    @level,
    @money0,
    @money1,
    @money2,
    @money3,
    @money4,
    @money5,
    @money6,
    @money7,
    @money8,
    @money9
);

-- END: quest_money_reward