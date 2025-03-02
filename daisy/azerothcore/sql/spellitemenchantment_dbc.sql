
-- START spellitemenchantment_dbc
SET
@id := {id},
@charges := {charges},
@effect_1 := {effect_1},
@effect_2 := {effect_2},
@effect_3 := {effect_3},
@effectpointsmin_1 := {effectpointsmin_1},
@effectpointsmin_2 := {effectpointsmin_2},
@effectpointsmin_3 := {effectpointsmin_3},
@effectpointsmax_1 := {effectpointsmax_1},
@effectpointsmax_2 := {effectpointsmax_2},
@effectpointsmax_3 := {effectpointsmax_3},
@effectarg_1 := {effectarg_1},
@effectarg_2 := {effectarg_2},
@effectarg_3 := {effectarg_3},
@name_lang_enus := "{name_lang_enus}",
@name_lang_engb := "{name_lang_engb}",
@name_lang_kokr := "{name_lang_kokr}",
@name_lang_frfr := "{name_lang_frfr}",
@name_lang_dede := "{name_lang_dede}",
@name_lang_encn := "{name_lang_encn}",
@name_lang_zhcn := "{name_lang_zhcn}",
@name_lang_entw := "{name_lang_entw}",
@name_lang_zhtw := "{name_lang_zhtw}",
@name_lang_eses := "{name_lang_eses}",
@name_lang_esmx := "{name_lang_esmx}",
@name_lang_ruru := "{name_lang_ruru}",
@name_lang_ptpt := "{name_lang_ptpt}",
@name_lang_ptbr := "{name_lang_ptbr}",
@name_lang_itit := "{name_lang_itit}",
@name_lang_unk := "{name_lang_unk}",
@name_lang_mask := {name_lang_mask},
@itemvisual := {itemvisual},
@flags := {flags},
@src_itemid := {src_itemid},
@condition_id := {condition_id},
@requiredskillid := {requiredskillid},
@requiredskillrank := {requiredskillrank},
@minlevel := {minlevel};

DELETE FROM spellitemenchantment_dbc WHERE
    id=@id
;

INSERT INTO spellitemenchantment_dbc (
    `id`,
    `charges`,
    `effect_1`,
    `effect_2`,
    `effect_3`,
    `effectpointsmin_1`,
    `effectpointsmin_2`,
    `effectpointsmin_3`,
    `effectpointsmax_1`,
    `effectpointsmax_2`,
    `effectpointsmax_3`,
    `effectarg_1`,
    `effectarg_2`,
    `effectarg_3`,
    `name_lang_enus`,
    `name_lang_engb`,
    `name_lang_kokr`,
    `name_lang_frfr`,
    `name_lang_dede`,
    `name_lang_encn`,
    `name_lang_zhcn`,
    `name_lang_entw`,
    `name_lang_zhtw`,
    `name_lang_eses`,
    `name_lang_esmx`,
    `name_lang_ruru`,
    `name_lang_ptpt`,
    `name_lang_ptbr`,
    `name_lang_itit`,
    `name_lang_unk`,
    `name_lang_mask`,
    `itemvisual`,
    `flags`,
    `src_itemid`,
    `condition_id`,
    `requiredskillid`,
    `requiredskillrank`,
    `minlevel`
)
VALUES (
    @id,
    @charges,
    @effect_1,
    @effect_2,
    @effect_3,
    @effectpointsmin_1,
    @effectpointsmin_2,
    @effectpointsmin_3,
    @effectpointsmax_1,
    @effectpointsmax_2,
    @effectpointsmax_3,
    @effectarg_1,
    @effectarg_2,
    @effectarg_3,
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
    @name_lang_mask,
    @itemvisual,
    @flags,
    @src_itemid,
    @condition_id,
    @requiredskillid,
    @requiredskillrank,
    @minlevel
);
-- EOF spellitemenchantment_dbc