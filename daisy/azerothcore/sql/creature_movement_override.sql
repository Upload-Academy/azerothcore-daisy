
-- START creature_movement_override
SET
@spawnid := {spawnid},
@ground := {ground},
@swim := {swim},
@flight := {flight},
@rooted := {rooted},
@chase := {chase},
@random := {random},
@interactionpausetimer := {interactionpausetimer};

DELETE FROM creature_movement_override WHERE
    spawnid=@spawnid
;

INSERT INTO creature_movement_override (
    `spawnid`,
    `ground`,
    `swim`,
    `flight`,
    `rooted`,
    `chase`,
    `random`,
    `interactionpausetimer`
)
VALUES (
    @spawnid,
    @ground,
    @swim,
    @flight,
    @rooted,
    @chase,
    @random,
    @interactionpausetimer
);
-- EOF creature_movement_override