-- BEGIN: taxipathnode_dbc
SET
@id := {id},
@pathid := {pathid},
@nodeindex := {nodeindex},
@continentid := {continentid},
@locx := {locx},
@locy := {locy},
@locz := {locz},
@flags := {flags},
@delay := {delay},
@arrivaleventid := {arrivaleventid},
@departureeventid := {departureeventid};

DELETE FROM taxipathnode_dbc WHERE
    id=@id
;

INSERT INTO taxipathnode_dbc (
    id,
    pathid,
    nodeindex,
    continentid,
    locx,
    locy,
    locz,
    flags,
    delay,
    arrivaleventid,
    departureeventid
)
VALUES (
    @id,
    @pathid,
    @nodeindex,
    @continentid,
    @locx,
    @locy,
    @locz,
    @flags,
    @delay,
    @arrivaleventid,
    @departureeventid
);

-- END: taxipathnode_dbc