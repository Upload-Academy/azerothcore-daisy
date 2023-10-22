-- BEGIN: transportanimation_dbc
SET
@id := {id},
@transportid := {transportid},
@timeindex := {timeindex},
@posx := {posx},
@posy := {posy},
@posz := {posz},
@sequenceid := {sequenceid};

DELETE FROM transportanimation_dbc WHERE
    id=@id
;

INSERT INTO transportanimation_dbc (
    id,
    transportid,
    timeindex,
    posx,
    posy,
    posz,
    sequenceid
)
VALUES (
    @id,
    @transportid,
    @timeindex,
    @posx,
    @posy,
    @posz,
    @sequenceid
);

-- END: transportanimation_dbc