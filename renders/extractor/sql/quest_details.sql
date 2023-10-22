
-- START quest_details
SET
@id := {id},
@emote1 := {emote1},
@emote2 := {emote2},
@emote3 := {emote3},
@emote4 := {emote4},
@emotedelay1 := {emotedelay1},
@emotedelay2 := {emotedelay2},
@emotedelay3 := {emotedelay3},
@emotedelay4 := {emotedelay4},
@verifiedbuild := {verifiedbuild};

DELETE FROM quest_details WHERE
    id=@id
;

INSERT INTO quest_details (
    id,
    emote1,
    emote2,
    emote3,
    emote4,
    emotedelay1,
    emotedelay2,
    emotedelay3,
    emotedelay4,
    verifiedbuild
)
VALUES (
    @id,
    @emote1,
    @emote2,
    @emote3,
    @emote4,
    @emotedelay1,
    @emotedelay2,
    @emotedelay3,
    @emotedelay4,
    @verifiedbuild
);
-- EOF quest_details