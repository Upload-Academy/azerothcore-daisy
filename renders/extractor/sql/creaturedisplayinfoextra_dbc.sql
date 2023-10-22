
-- START creaturedisplayinfoextra_dbc
SET
@id := {id},
@displayraceid := {displayraceid},
@displaysexid := {displaysexid},
@skinid := {skinid},
@faceid := {faceid},
@hairstyleid := {hairstyleid},
@haircolorid := {haircolorid},
@facialhairid := {facialhairid},
@npcitemdisplay1 := {npcitemdisplay1},
@npcitemdisplay2 := {npcitemdisplay2},
@npcitemdisplay3 := {npcitemdisplay3},
@npcitemdisplay4 := {npcitemdisplay4},
@npcitemdisplay5 := {npcitemdisplay5},
@npcitemdisplay6 := {npcitemdisplay6},
@npcitemdisplay7 := {npcitemdisplay7},
@npcitemdisplay8 := {npcitemdisplay8},
@npcitemdisplay9 := {npcitemdisplay9},
@npcitemdisplay10 := {npcitemdisplay10},
@npcitemdisplay11 := {npcitemdisplay11},
@flags := {flags},
@bakename := '{bakename}';

DELETE FROM creaturedisplayinfoextra_dbc WHERE
    id=@id
;

INSERT INTO creaturedisplayinfoextra_dbc (
    id,
    displayraceid,
    displaysexid,
    skinid,
    faceid,
    hairstyleid,
    haircolorid,
    facialhairid,
    npcitemdisplay1,
    npcitemdisplay2,
    npcitemdisplay3,
    npcitemdisplay4,
    npcitemdisplay5,
    npcitemdisplay6,
    npcitemdisplay7,
    npcitemdisplay8,
    npcitemdisplay9,
    npcitemdisplay10,
    npcitemdisplay11,
    flags,
    bakename
)
VALUES (
    @id,
    @displayraceid,
    @displaysexid,
    @skinid,
    @faceid,
    @hairstyleid,
    @haircolorid,
    @facialhairid,
    @npcitemdisplay1,
    @npcitemdisplay2,
    @npcitemdisplay3,
    @npcitemdisplay4,
    @npcitemdisplay5,
    @npcitemdisplay6,
    @npcitemdisplay7,
    @npcitemdisplay8,
    @npcitemdisplay9,
    @npcitemdisplay10,
    @npcitemdisplay11,
    @flags,
    @bakename
);
-- EOF creaturedisplayinfoextra_dbc