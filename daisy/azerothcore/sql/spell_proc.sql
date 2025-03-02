
-- START spell_proc
SET
@spellid := {spellid},
@schoolmask := {schoolmask},
@spellfamilyname := {spellfamilyname},
@spellfamilymask0 := {spellfamilymask0},
@spellfamilymask1 := {spellfamilymask1},
@spellfamilymask2 := {spellfamilymask2},
@procflags := {procflags},
@spelltypemask := {spelltypemask},
@spellphasemask := {spellphasemask},
@hitmask := {hitmask},
@attributesmask := {attributesmask},
@procsperminute := {procsperminute},
@chance := {chance},
@cooldown := {cooldown},
@charges := {charges};

DELETE FROM spell_proc WHERE
    spellid=@spellid
;

INSERT INTO spell_proc (
    `spellid`,
    `schoolmask`,
    `spellfamilyname`,
    `spellfamilymask0`,
    `spellfamilymask1`,
    `spellfamilymask2`,
    `procflags`,
    `spelltypemask`,
    `spellphasemask`,
    `hitmask`,
    `attributesmask`,
    `procsperminute`,
    `chance`,
    `cooldown`,
    `charges`
)
VALUES (
    @spellid,
    @schoolmask,
    @spellfamilyname,
    @spellfamilymask0,
    @spellfamilymask1,
    @spellfamilymask2,
    @procflags,
    @spelltypemask,
    @spellphasemask,
    @hitmask,
    @attributesmask,
    @procsperminute,
    @chance,
    @cooldown,
    @charges
);
-- EOF spell_proc