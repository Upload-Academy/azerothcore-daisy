
-- START itembagfamily_dbc
SET
@id := {id},
@name_lang_enus := '{name_lang_enus}',
@name_lang_engb := '{name_lang_engb}',
@name_lang_kokr := '{name_lang_kokr}',
@name_lang_frfr := '{name_lang_frfr}',
@name_lang_dede := '{name_lang_dede}',
@name_lang_encn := '{name_lang_encn}',
@name_lang_zhcn := '{name_lang_zhcn}',
@name_lang_entw := '{name_lang_entw}',
@name_lang_zhtw := '{name_lang_zhtw}',
@name_lang_eses := '{name_lang_eses}',
@name_lang_esmx := '{name_lang_esmx}',
@name_lang_ruru := '{name_lang_ruru}',
@name_lang_ptpt := '{name_lang_ptpt}',
@name_lang_ptbr := '{name_lang_ptbr}',
@name_lang_itit := '{name_lang_itit}',
@name_lang_unk := '{name_lang_unk}',
@name_lang_mask := {name_lang_mask};

DELETE FROM itembagfamily_dbc WHERE
    id=@id
;

INSERT INTO itembagfamily_dbc (
    id,
    name_lang_enus,
    name_lang_engb,
    name_lang_kokr,
    name_lang_frfr,
    name_lang_dede,
    name_lang_encn,
    name_lang_zhcn,
    name_lang_entw,
    name_lang_zhtw,
    name_lang_eses,
    name_lang_esmx,
    name_lang_ruru,
    name_lang_ptpt,
    name_lang_ptbr,
    name_lang_itit,
    name_lang_unk,
    name_lang_mask
)
VALUES (
    @id,
    @name_lang_enus,
    @name_lang_engb,
    @name_lang_kokr,
    @name_lang_frfr,
    @name_lang_dede,
    @name_lang_encn,
    @name_lang_zhcn,
    @name_lang_entw,
    @name_lang_zhtw,
    @name_lang_eses,
    @name_lang_esmx,
    @name_lang_ruru,
    @name_lang_ptpt,
    @name_lang_ptbr,
    @name_lang_itit,
    @name_lang_unk,
    @name_lang_mask
);
-- EOF itembagfamily_dbc