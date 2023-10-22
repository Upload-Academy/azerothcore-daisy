-- BEGIN: wmoareatable_dbc
SET
@id := {id},
@wmoid := {wmoid},
@namesetid := {namesetid},
@wmogroupid := {wmogroupid},
@soundproviderpref := {soundproviderpref},
@soundproviderprefunderwater := {soundproviderprefunderwater},
@ambienceid := {ambienceid},
@zonemusic := {zonemusic},
@introsound := {introsound},
@flags := {flags},
@areatableid := {areatableid},
@areaname_lang_enus := '{areaname_lang_enus}',
@areaname_lang_engb := '{areaname_lang_engb}',
@areaname_lang_kokr := '{areaname_lang_kokr}',
@areaname_lang_frfr := '{areaname_lang_frfr}',
@areaname_lang_dede := '{areaname_lang_dede}',
@areaname_lang_encn := '{areaname_lang_encn}',
@areaname_lang_zhcn := '{areaname_lang_zhcn}',
@areaname_lang_entw := '{areaname_lang_entw}',
@areaname_lang_zhtw := '{areaname_lang_zhtw}',
@areaname_lang_eses := '{areaname_lang_eses}',
@areaname_lang_esmx := '{areaname_lang_esmx}',
@areaname_lang_ruru := '{areaname_lang_ruru}',
@areaname_lang_ptpt := '{areaname_lang_ptpt}',
@areaname_lang_ptbr := '{areaname_lang_ptbr}',
@areaname_lang_itit := '{areaname_lang_itit}',
@areaname_lang_unk := '{areaname_lang_unk}',
@areaname_lang_mask := {areaname_lang_mask};

DELETE FROM wmoareatable_dbc WHERE
    id=@id
;

INSERT INTO wmoareatable_dbc (
    id,
    wmoid,
    namesetid,
    wmogroupid,
    soundproviderpref,
    soundproviderprefunderwater,
    ambienceid,
    zonemusic,
    introsound,
    flags,
    areatableid,
    areaname_lang_enus,
    areaname_lang_engb,
    areaname_lang_kokr,
    areaname_lang_frfr,
    areaname_lang_dede,
    areaname_lang_encn,
    areaname_lang_zhcn,
    areaname_lang_entw,
    areaname_lang_zhtw,
    areaname_lang_eses,
    areaname_lang_esmx,
    areaname_lang_ruru,
    areaname_lang_ptpt,
    areaname_lang_ptbr,
    areaname_lang_itit,
    areaname_lang_unk,
    areaname_lang_mask
)
VALUES (
    @id,
    @wmoid,
    @namesetid,
    @wmogroupid,
    @soundproviderpref,
    @soundproviderprefunderwater,
    @ambienceid,
    @zonemusic,
    @introsound,
    @flags,
    @areatableid,
    @areaname_lang_enus,
    @areaname_lang_engb,
    @areaname_lang_kokr,
    @areaname_lang_frfr,
    @areaname_lang_dede,
    @areaname_lang_encn,
    @areaname_lang_zhcn,
    @areaname_lang_entw,
    @areaname_lang_zhtw,
    @areaname_lang_eses,
    @areaname_lang_esmx,
    @areaname_lang_ruru,
    @areaname_lang_ptpt,
    @areaname_lang_ptbr,
    @areaname_lang_itit,
    @areaname_lang_unk,
    @areaname_lang_mask
);

-- END: wmoareatable_dbc