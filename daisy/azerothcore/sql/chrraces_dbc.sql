
-- START chrraces_dbc
SET
@id := {id},
@flags := {flags},
@factionid := {factionid},
@explorationsoundid := {explorationsoundid},
@maledisplayid := {maledisplayid},
@femaledisplayid := {femaledisplayid},
@clientprefix := "{clientprefix}",
@baselanguage := {baselanguage},
@creaturetype := {creaturetype},
@ressicknessspellid := {ressicknessspellid},
@splashsoundid := {splashsoundid},
@clientfilestring := "{clientfilestring}",
@cinematicsequenceid := {cinematicsequenceid},
@alliance := {alliance},
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
@name_female_lang_enus := "{name_female_lang_enus}",
@name_female_lang_engb := "{name_female_lang_engb}",
@name_female_lang_kokr := "{name_female_lang_kokr}",
@name_female_lang_frfr := "{name_female_lang_frfr}",
@name_female_lang_dede := "{name_female_lang_dede}",
@name_female_lang_encn := "{name_female_lang_encn}",
@name_female_lang_zhcn := "{name_female_lang_zhcn}",
@name_female_lang_entw := "{name_female_lang_entw}",
@name_female_lang_zhtw := "{name_female_lang_zhtw}",
@name_female_lang_eses := "{name_female_lang_eses}",
@name_female_lang_esmx := "{name_female_lang_esmx}",
@name_female_lang_ruru := "{name_female_lang_ruru}",
@name_female_lang_ptpt := "{name_female_lang_ptpt}",
@name_female_lang_ptbr := "{name_female_lang_ptbr}",
@name_female_lang_itit := "{name_female_lang_itit}",
@name_female_lang_unk := "{name_female_lang_unk}",
@name_female_lang_mask := {name_female_lang_mask},
@name_male_lang_enus := "{name_male_lang_enus}",
@name_male_lang_engb := "{name_male_lang_engb}",
@name_male_lang_kokr := "{name_male_lang_kokr}",
@name_male_lang_frfr := "{name_male_lang_frfr}",
@name_male_lang_dede := "{name_male_lang_dede}",
@name_male_lang_encn := "{name_male_lang_encn}",
@name_male_lang_zhcn := "{name_male_lang_zhcn}",
@name_male_lang_entw := "{name_male_lang_entw}",
@name_male_lang_zhtw := "{name_male_lang_zhtw}",
@name_male_lang_eses := "{name_male_lang_eses}",
@name_male_lang_esmx := "{name_male_lang_esmx}",
@name_male_lang_ruru := "{name_male_lang_ruru}",
@name_male_lang_ptpt := "{name_male_lang_ptpt}",
@name_male_lang_ptbr := "{name_male_lang_ptbr}",
@name_male_lang_itit := "{name_male_lang_itit}",
@name_male_lang_unk := "{name_male_lang_unk}",
@name_male_lang_mask := {name_male_lang_mask},
@facialhaircustomization_1 := "{facialhaircustomization_1}",
@facialhaircustomization_2 := "{facialhaircustomization_2}",
@haircustomization := "{haircustomization}",
@required_expansion := {required_expansion};

DELETE FROM chrraces_dbc WHERE
    id=@id
;

INSERT INTO chrraces_dbc (
    `id`,
    `flags`,
    `factionid`,
    `explorationsoundid`,
    `maledisplayid`,
    `femaledisplayid`,
    `clientprefix`,
    `baselanguage`,
    `creaturetype`,
    `ressicknessspellid`,
    `splashsoundid`,
    `clientfilestring`,
    `cinematicsequenceid`,
    `alliance`,
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
    `name_female_lang_enus`,
    `name_female_lang_engb`,
    `name_female_lang_kokr`,
    `name_female_lang_frfr`,
    `name_female_lang_dede`,
    `name_female_lang_encn`,
    `name_female_lang_zhcn`,
    `name_female_lang_entw`,
    `name_female_lang_zhtw`,
    `name_female_lang_eses`,
    `name_female_lang_esmx`,
    `name_female_lang_ruru`,
    `name_female_lang_ptpt`,
    `name_female_lang_ptbr`,
    `name_female_lang_itit`,
    `name_female_lang_unk`,
    `name_female_lang_mask`,
    `name_male_lang_enus`,
    `name_male_lang_engb`,
    `name_male_lang_kokr`,
    `name_male_lang_frfr`,
    `name_male_lang_dede`,
    `name_male_lang_encn`,
    `name_male_lang_zhcn`,
    `name_male_lang_entw`,
    `name_male_lang_zhtw`,
    `name_male_lang_eses`,
    `name_male_lang_esmx`,
    `name_male_lang_ruru`,
    `name_male_lang_ptpt`,
    `name_male_lang_ptbr`,
    `name_male_lang_itit`,
    `name_male_lang_unk`,
    `name_male_lang_mask`,
    `facialhaircustomization_1`,
    `facialhaircustomization_2`,
    `haircustomization`,
    `required_expansion`
)
VALUES (
    @id,
    @flags,
    @factionid,
    @explorationsoundid,
    @maledisplayid,
    @femaledisplayid,
    @clientprefix,
    @baselanguage,
    @creaturetype,
    @ressicknessspellid,
    @splashsoundid,
    @clientfilestring,
    @cinematicsequenceid,
    @alliance,
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
    @name_female_lang_enus,
    @name_female_lang_engb,
    @name_female_lang_kokr,
    @name_female_lang_frfr,
    @name_female_lang_dede,
    @name_female_lang_encn,
    @name_female_lang_zhcn,
    @name_female_lang_entw,
    @name_female_lang_zhtw,
    @name_female_lang_eses,
    @name_female_lang_esmx,
    @name_female_lang_ruru,
    @name_female_lang_ptpt,
    @name_female_lang_ptbr,
    @name_female_lang_itit,
    @name_female_lang_unk,
    @name_female_lang_mask,
    @name_male_lang_enus,
    @name_male_lang_engb,
    @name_male_lang_kokr,
    @name_male_lang_frfr,
    @name_male_lang_dede,
    @name_male_lang_encn,
    @name_male_lang_zhcn,
    @name_male_lang_entw,
    @name_male_lang_zhtw,
    @name_male_lang_eses,
    @name_male_lang_esmx,
    @name_male_lang_ruru,
    @name_male_lang_ptpt,
    @name_male_lang_ptbr,
    @name_male_lang_itit,
    @name_male_lang_unk,
    @name_male_lang_mask,
    @facialhaircustomization_1,
    @facialhaircustomization_2,
    @haircustomization,
    @required_expansion
);
-- EOF chrraces_dbc