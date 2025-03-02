
-- START mapdifficulty_dbc
SET
@id := {id},
@mapid := {mapid},
@difficulty := {difficulty},
@message_lang_enus := "{message_lang_enus}",
@message_lang_engb := "{message_lang_engb}",
@message_lang_kokr := "{message_lang_kokr}",
@message_lang_frfr := "{message_lang_frfr}",
@message_lang_dede := "{message_lang_dede}",
@message_lang_encn := "{message_lang_encn}",
@message_lang_zhcn := "{message_lang_zhcn}",
@message_lang_entw := "{message_lang_entw}",
@message_lang_zhtw := "{message_lang_zhtw}",
@message_lang_eses := "{message_lang_eses}",
@message_lang_esmx := "{message_lang_esmx}",
@message_lang_ruru := "{message_lang_ruru}",
@message_lang_ptpt := "{message_lang_ptpt}",
@message_lang_ptbr := "{message_lang_ptbr}",
@message_lang_itit := "{message_lang_itit}",
@message_lang_unk := "{message_lang_unk}",
@message_lang_mask := {message_lang_mask},
@raidduration := {raidduration},
@maxplayers := {maxplayers},
@difficultystring := "{difficultystring}";

DELETE FROM mapdifficulty_dbc WHERE
    id=@id
;

INSERT INTO mapdifficulty_dbc (
    `id`,
    `mapid`,
    `difficulty`,
    `message_lang_enus`,
    `message_lang_engb`,
    `message_lang_kokr`,
    `message_lang_frfr`,
    `message_lang_dede`,
    `message_lang_encn`,
    `message_lang_zhcn`,
    `message_lang_entw`,
    `message_lang_zhtw`,
    `message_lang_eses`,
    `message_lang_esmx`,
    `message_lang_ruru`,
    `message_lang_ptpt`,
    `message_lang_ptbr`,
    `message_lang_itit`,
    `message_lang_unk`,
    `message_lang_mask`,
    `raidduration`,
    `maxplayers`,
    `difficultystring`
)
VALUES (
    @id,
    @mapid,
    @difficulty,
    @message_lang_enus,
    @message_lang_engb,
    @message_lang_kokr,
    @message_lang_frfr,
    @message_lang_dede,
    @message_lang_encn,
    @message_lang_zhcn,
    @message_lang_entw,
    @message_lang_zhtw,
    @message_lang_eses,
    @message_lang_esmx,
    @message_lang_ruru,
    @message_lang_ptpt,
    @message_lang_ptbr,
    @message_lang_itit,
    @message_lang_unk,
    @message_lang_mask,
    @raidduration,
    @maxplayers,
    @difficultystring
);
-- EOF mapdifficulty_dbc