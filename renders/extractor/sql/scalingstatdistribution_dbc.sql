
-- START scalingstatdistribution_dbc
SET
@id := {id},
@statid_1 := {statid_1},
@statid_2 := {statid_2},
@statid_3 := {statid_3},
@statid_4 := {statid_4},
@statid_5 := {statid_5},
@statid_6 := {statid_6},
@statid_7 := {statid_7},
@statid_8 := {statid_8},
@statid_9 := {statid_9},
@statid_10 := {statid_10},
@bonus_1 := {bonus_1},
@bonus_2 := {bonus_2},
@bonus_3 := {bonus_3},
@bonus_4 := {bonus_4},
@bonus_5 := {bonus_5},
@bonus_6 := {bonus_6},
@bonus_7 := {bonus_7},
@bonus_8 := {bonus_8},
@bonus_9 := {bonus_9},
@bonus_10 := {bonus_10},
@maxlevel := {maxlevel};

DELETE FROM scalingstatdistribution_dbc WHERE
    id=@id
;

INSERT INTO scalingstatdistribution_dbc (
    id,
    statid_1,
    statid_2,
    statid_3,
    statid_4,
    statid_5,
    statid_6,
    statid_7,
    statid_8,
    statid_9,
    statid_10,
    bonus_1,
    bonus_2,
    bonus_3,
    bonus_4,
    bonus_5,
    bonus_6,
    bonus_7,
    bonus_8,
    bonus_9,
    bonus_10,
    maxlevel
)
VALUES (
    @id,
    @statid_1,
    @statid_2,
    @statid_3,
    @statid_4,
    @statid_5,
    @statid_6,
    @statid_7,
    @statid_8,
    @statid_9,
    @statid_10,
    @bonus_1,
    @bonus_2,
    @bonus_3,
    @bonus_4,
    @bonus_5,
    @bonus_6,
    @bonus_7,
    @bonus_8,
    @bonus_9,
    @bonus_10,
    @maxlevel
);
-- EOF scalingstatdistribution_dbc