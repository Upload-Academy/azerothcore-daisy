-- BEGIN: creature_template_movement
SET
@creatureid := {creatureid},
@ground := {ground},
@swim := {swim},
@flight := {flight},
@rooted := {rooted},
@chase := {chase},
@random := {random},
@interactionpausetimer := {interactionpausetimer};

DELETE FROM creature_template_movement WHERE
    creatureid=@creatureid
;

INSERT INTO creature_template_movement (
    creatureid,
    ground,
    swim,
    flight,
    rooted,
    chase,
    random,
    interactionpausetimer
)
VALUES (
    @creatureid,
    @ground,
    @swim,
    @flight,
    @rooted,
    @chase,
    @random,
    @interactionpausetimer
);

-- END: creature_template_movement