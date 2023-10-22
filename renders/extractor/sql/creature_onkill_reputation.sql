
-- START creature_onkill_reputation
SET
@creature_id := {creature_id},
@rewonkillrepfaction1 := {rewonkillrepfaction1},
@rewonkillrepfaction2 := {rewonkillrepfaction2},
@maxstanding1 := {maxstanding1},
@isteamaward1 := {isteamaward1},
@rewonkillrepvalue1 := {rewonkillrepvalue1},
@maxstanding2 := {maxstanding2},
@isteamaward2 := {isteamaward2},
@rewonkillrepvalue2 := {rewonkillrepvalue2},
@teamdependent := {teamdependent};

DELETE FROM creature_onkill_reputation WHERE
    creature_id=@creature_id
;

INSERT INTO creature_onkill_reputation (
    creature_id,
    rewonkillrepfaction1,
    rewonkillrepfaction2,
    maxstanding1,
    isteamaward1,
    rewonkillrepvalue1,
    maxstanding2,
    isteamaward2,
    rewonkillrepvalue2,
    teamdependent
)
VALUES (
    @creature_id,
    @rewonkillrepfaction1,
    @rewonkillrepfaction2,
    @maxstanding1,
    @isteamaward1,
    @rewonkillrepvalue1,
    @maxstanding2,
    @isteamaward2,
    @rewonkillrepvalue2,
    @teamdependent
);
-- EOF creature_onkill_reputation