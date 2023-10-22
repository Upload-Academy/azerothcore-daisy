
-- START broadcast_text
SET
@id := {id},
@languageid := {languageid},
@maletext := '{maletext}',
@femaletext := '{femaletext}',
@emoteid1 := {emoteid1},
@emoteid2 := {emoteid2},
@emoteid3 := {emoteid3},
@emotedelay1 := {emotedelay1},
@emotedelay2 := {emotedelay2},
@emotedelay3 := {emotedelay3},
@soundentriesid := {soundentriesid},
@emotesid := {emotesid},
@flags := {flags},
@verifiedbuild := {verifiedbuild};

DELETE FROM broadcast_text WHERE
    id=@id
;

INSERT INTO broadcast_text (
    id,
    languageid,
    maletext,
    femaletext,
    emoteid1,
    emoteid2,
    emoteid3,
    emotedelay1,
    emotedelay2,
    emotedelay3,
    soundentriesid,
    emotesid,
    flags,
    verifiedbuild
)
VALUES (
    @id,
    @languageid,
    @maletext,
    @femaletext,
    @emoteid1,
    @emoteid2,
    @emoteid3,
    @emotedelay1,
    @emotedelay2,
    @emotedelay3,
    @soundentriesid,
    @emotesid,
    @flags,
    @verifiedbuild
);
-- EOF broadcast_text