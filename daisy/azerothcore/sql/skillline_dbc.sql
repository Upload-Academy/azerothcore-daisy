
-- START skillline_dbc
SET
@id := {id},
@categoryid := {categoryid},
@skillcostsid := {skillcostsid},
@displayname_lang_enus := "{displayname_lang_enus}",
@displayname_lang_engb := "{displayname_lang_engb}",
@displayname_lang_kokr := "{displayname_lang_kokr}",
@displayname_lang_frfr := "{displayname_lang_frfr}",
@displayname_lang_dede := "{displayname_lang_dede}",
@displayname_lang_encn := "{displayname_lang_encn}",
@displayname_lang_zhcn := "{displayname_lang_zhcn}",
@displayname_lang_entw := "{displayname_lang_entw}",
@displayname_lang_zhtw := "{displayname_lang_zhtw}",
@displayname_lang_eses := "{displayname_lang_eses}",
@displayname_lang_esmx := "{displayname_lang_esmx}",
@displayname_lang_ruru := "{displayname_lang_ruru}",
@displayname_lang_ptpt := "{displayname_lang_ptpt}",
@displayname_lang_ptbr := "{displayname_lang_ptbr}",
@displayname_lang_itit := "{displayname_lang_itit}",
@displayname_lang_unk := "{displayname_lang_unk}",
@displayname_lang_mask := {displayname_lang_mask},
@description_lang_enus := "{description_lang_enus}",
@description_lang_engb := "{description_lang_engb}",
@description_lang_kokr := "{description_lang_kokr}",
@description_lang_frfr := "{description_lang_frfr}",
@description_lang_dede := "{description_lang_dede}",
@description_lang_encn := "{description_lang_encn}",
@description_lang_zhcn := "{description_lang_zhcn}",
@description_lang_entw := "{description_lang_entw}",
@description_lang_zhtw := "{description_lang_zhtw}",
@description_lang_eses := "{description_lang_eses}",
@description_lang_esmx := "{description_lang_esmx}",
@description_lang_ruru := "{description_lang_ruru}",
@description_lang_ptpt := "{description_lang_ptpt}",
@description_lang_ptbr := "{description_lang_ptbr}",
@description_lang_itit := "{description_lang_itit}",
@description_lang_unk := "{description_lang_unk}",
@description_lang_mask := {description_lang_mask},
@spelliconid := {spelliconid},
@alternateverb_lang_enus := "{alternateverb_lang_enus}",
@alternateverb_lang_engb := "{alternateverb_lang_engb}",
@alternateverb_lang_kokr := "{alternateverb_lang_kokr}",
@alternateverb_lang_frfr := "{alternateverb_lang_frfr}",
@alternateverb_lang_dede := "{alternateverb_lang_dede}",
@alternateverb_lang_encn := "{alternateverb_lang_encn}",
@alternateverb_lang_zhcn := "{alternateverb_lang_zhcn}",
@alternateverb_lang_entw := "{alternateverb_lang_entw}",
@alternateverb_lang_zhtw := "{alternateverb_lang_zhtw}",
@alternateverb_lang_eses := "{alternateverb_lang_eses}",
@alternateverb_lang_esmx := "{alternateverb_lang_esmx}",
@alternateverb_lang_ruru := "{alternateverb_lang_ruru}",
@alternateverb_lang_ptpt := "{alternateverb_lang_ptpt}",
@alternateverb_lang_ptbr := "{alternateverb_lang_ptbr}",
@alternateverb_lang_itit := "{alternateverb_lang_itit}",
@alternateverb_lang_unk := "{alternateverb_lang_unk}",
@alternateverb_lang_mask := {alternateverb_lang_mask},
@canlink := {canlink};

DELETE FROM skillline_dbc WHERE
    id=@id
;

INSERT INTO skillline_dbc (
    `id`,
    `categoryid`,
    `skillcostsid`,
    `displayname_lang_enus`,
    `displayname_lang_engb`,
    `displayname_lang_kokr`,
    `displayname_lang_frfr`,
    `displayname_lang_dede`,
    `displayname_lang_encn`,
    `displayname_lang_zhcn`,
    `displayname_lang_entw`,
    `displayname_lang_zhtw`,
    `displayname_lang_eses`,
    `displayname_lang_esmx`,
    `displayname_lang_ruru`,
    `displayname_lang_ptpt`,
    `displayname_lang_ptbr`,
    `displayname_lang_itit`,
    `displayname_lang_unk`,
    `displayname_lang_mask`,
    `description_lang_enus`,
    `description_lang_engb`,
    `description_lang_kokr`,
    `description_lang_frfr`,
    `description_lang_dede`,
    `description_lang_encn`,
    `description_lang_zhcn`,
    `description_lang_entw`,
    `description_lang_zhtw`,
    `description_lang_eses`,
    `description_lang_esmx`,
    `description_lang_ruru`,
    `description_lang_ptpt`,
    `description_lang_ptbr`,
    `description_lang_itit`,
    `description_lang_unk`,
    `description_lang_mask`,
    `spelliconid`,
    `alternateverb_lang_enus`,
    `alternateverb_lang_engb`,
    `alternateverb_lang_kokr`,
    `alternateverb_lang_frfr`,
    `alternateverb_lang_dede`,
    `alternateverb_lang_encn`,
    `alternateverb_lang_zhcn`,
    `alternateverb_lang_entw`,
    `alternateverb_lang_zhtw`,
    `alternateverb_lang_eses`,
    `alternateverb_lang_esmx`,
    `alternateverb_lang_ruru`,
    `alternateverb_lang_ptpt`,
    `alternateverb_lang_ptbr`,
    `alternateverb_lang_itit`,
    `alternateverb_lang_unk`,
    `alternateverb_lang_mask`,
    `canlink`
)
VALUES (
    @id,
    @categoryid,
    @skillcostsid,
    @displayname_lang_enus,
    @displayname_lang_engb,
    @displayname_lang_kokr,
    @displayname_lang_frfr,
    @displayname_lang_dede,
    @displayname_lang_encn,
    @displayname_lang_zhcn,
    @displayname_lang_entw,
    @displayname_lang_zhtw,
    @displayname_lang_eses,
    @displayname_lang_esmx,
    @displayname_lang_ruru,
    @displayname_lang_ptpt,
    @displayname_lang_ptbr,
    @displayname_lang_itit,
    @displayname_lang_unk,
    @displayname_lang_mask,
    @description_lang_enus,
    @description_lang_engb,
    @description_lang_kokr,
    @description_lang_frfr,
    @description_lang_dede,
    @description_lang_encn,
    @description_lang_zhcn,
    @description_lang_entw,
    @description_lang_zhtw,
    @description_lang_eses,
    @description_lang_esmx,
    @description_lang_ruru,
    @description_lang_ptpt,
    @description_lang_ptbr,
    @description_lang_itit,
    @description_lang_unk,
    @description_lang_mask,
    @spelliconid,
    @alternateverb_lang_enus,
    @alternateverb_lang_engb,
    @alternateverb_lang_kokr,
    @alternateverb_lang_frfr,
    @alternateverb_lang_dede,
    @alternateverb_lang_encn,
    @alternateverb_lang_zhcn,
    @alternateverb_lang_entw,
    @alternateverb_lang_zhtw,
    @alternateverb_lang_eses,
    @alternateverb_lang_esmx,
    @alternateverb_lang_ruru,
    @alternateverb_lang_ptpt,
    @alternateverb_lang_ptbr,
    @alternateverb_lang_itit,
    @alternateverb_lang_unk,
    @alternateverb_lang_mask,
    @canlink
);
-- EOF skillline_dbc