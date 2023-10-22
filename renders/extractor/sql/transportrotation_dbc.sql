-- BEGIN: transportrotation_dbc
SET
@id := {id},
@gameobjectsid := {gameobjectsid},
@timeindex := {timeindex},
@rotx := {rotx},
@roty := {roty},
@rotz := {rotz},
@rotw := {rotw};

DELETE FROM transportrotation_dbc WHERE
    id=@id
;

INSERT INTO transportrotation_dbc (
    id,
    gameobjectsid,
    timeindex,
    rotx,
    roty,
    rotz,
    rotw
)
VALUES (
    @id,
    @gameobjectsid,
    @timeindex,
    @rotx,
    @roty,
    @rotz,
    @rotw
);

-- END: transportrotation_dbc