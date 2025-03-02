
-- START spell_enchant_proc_data
SET
@entry := {entry},
@customchance := {customchance},
@ppmchance := {ppmchance},
@procex := {procex},
@attributemask := {attributemask};

DELETE FROM spell_enchant_proc_data WHERE
    entry=@entry
;

INSERT INTO spell_enchant_proc_data (
    `entry`,
    `customchance`,
    `ppmchance`,
    `procex`,
    `attributemask`
)
VALUES (
    @entry,
    @customchance,
    @ppmchance,
    @procex,
    @attributemask
);
-- EOF spell_enchant_proc_data