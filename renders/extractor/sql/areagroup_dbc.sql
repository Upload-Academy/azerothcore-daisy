
-- START areagroup_dbc
SET
@id := {id},
@areaid_1 := {areaid_1},
@areaid_2 := {areaid_2},
@areaid_3 := {areaid_3},
@areaid_4 := {areaid_4},
@areaid_5 := {areaid_5},
@areaid_6 := {areaid_6},
@nextareaid := {nextareaid};

DELETE FROM areagroup_dbc WHERE
    id=@id
;

INSERT INTO areagroup_dbc (
    id,
    areaid_1,
    areaid_2,
    areaid_3,
    areaid_4,
    areaid_5,
    areaid_6,
    nextareaid
)
VALUES (
    @id,
    @areaid_1,
    @areaid_2,
    @areaid_3,
    @areaid_4,
    @areaid_5,
    @areaid_6,
    @nextareaid
);
-- EOF areagroup_dbc