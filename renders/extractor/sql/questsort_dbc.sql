-- BEGIN: questsort_dbc
SET
@id := {id},
@sortname_lang_enus := '{sortname_lang_enus}',
@sortname_lang_engb := '{sortname_lang_engb}',
@sortname_lang_kokr := '{sortname_lang_kokr}',
@sortname_lang_frfr := '{sortname_lang_frfr}',
@sortname_lang_dede := '{sortname_lang_dede}',
@sortname_lang_encn := '{sortname_lang_encn}',
@sortname_lang_zhcn := '{sortname_lang_zhcn}',
@sortname_lang_entw := '{sortname_lang_entw}',
@sortname_lang_zhtw := '{sortname_lang_zhtw}',
@sortname_lang_eses := '{sortname_lang_eses}',
@sortname_lang_esmx := '{sortname_lang_esmx}',
@sortname_lang_ruru := '{sortname_lang_ruru}',
@sortname_lang_ptpt := '{sortname_lang_ptpt}',
@sortname_lang_ptbr := '{sortname_lang_ptbr}',
@sortname_lang_itit := '{sortname_lang_itit}',
@sortname_lang_unk := '{sortname_lang_unk}',
@sortname_lang_mask := {sortname_lang_mask};

DELETE FROM questsort_dbc WHERE
    id=@id
;

INSERT INTO questsort_dbc (
    id,
    sortname_lang_enus,
    sortname_lang_engb,
    sortname_lang_kokr,
    sortname_lang_frfr,
    sortname_lang_dede,
    sortname_lang_encn,
    sortname_lang_zhcn,
    sortname_lang_entw,
    sortname_lang_zhtw,
    sortname_lang_eses,
    sortname_lang_esmx,
    sortname_lang_ruru,
    sortname_lang_ptpt,
    sortname_lang_ptbr,
    sortname_lang_itit,
    sortname_lang_unk,
    sortname_lang_mask
)
VALUES (
    @id,
    @sortname_lang_enus,
    @sortname_lang_engb,
    @sortname_lang_kokr,
    @sortname_lang_frfr,
    @sortname_lang_dede,
    @sortname_lang_encn,
    @sortname_lang_zhcn,
    @sortname_lang_entw,
    @sortname_lang_zhtw,
    @sortname_lang_eses,
    @sortname_lang_esmx,
    @sortname_lang_ruru,
    @sortname_lang_ptpt,
    @sortname_lang_ptbr,
    @sortname_lang_itit,
    @sortname_lang_unk,
    @sortname_lang_mask
);

-- END: questsort_dbc