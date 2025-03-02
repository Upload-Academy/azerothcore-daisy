
-- START spell_proc_event
SET
@entry := {entry},
@schoolmask := {schoolmask},
@spellfamilyname := {spellfamilyname},
@spellfamilymask0 := {spellfamilymask0},
@spellfamilymask1 := {spellfamilymask1},
@spellfamilymask2 := {spellfamilymask2},
@procflags := {procflags},
@procex := {procex},
@procphase := {procphase},
@ppmrate := {ppmrate},
@customchance := {customchance},
@cooldown := {cooldown};

DELETE FROM spell_proc_event WHERE
    entry=@entry
;

INSERT INTO spell_proc_event (
    `entry`,
    `schoolmask`,
    `spellfamilyname`,
    `spellfamilymask0`,
    `spellfamilymask1`,
    `spellfamilymask2`,
    `procflags`,
    `procex`,
    `procphase`,
    `ppmrate`,
    `customchance`,
    `cooldown`
)
VALUES (
    @entry,
    @schoolmask,
    @spellfamilyname,
    @spellfamilymask0,
    @spellfamilymask1,
    @spellfamilymask2,
    @procflags,
    @procex,
    @procphase,
    @ppmrate,
    @customchance,
    @cooldown
);
-- EOF spell_proc_event