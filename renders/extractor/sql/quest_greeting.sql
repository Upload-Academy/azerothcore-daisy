
-- START quest_greeting
SET
@id := {id},
@type := {type},
@greetemotetype := {greetemotetype},
@greetemotedelay := {greetemotedelay},
@greeting := '{greeting}',
@verifiedbuild := {verifiedbuild};

DELETE FROM quest_greeting WHERE
    id=@id AND
    type=@type
;

INSERT INTO quest_greeting (
    id,
    type,
    greetemotetype,
    greetemotedelay,
    greeting,
    verifiedbuild
)
VALUES (
    @id,
    @type,
    @greetemotetype,
    @greetemotedelay,
    @greeting,
    @verifiedbuild
);
-- EOF quest_greeting