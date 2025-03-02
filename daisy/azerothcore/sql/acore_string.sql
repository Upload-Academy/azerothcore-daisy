
-- START acore_string
SET
@entry := {entry},
@content_default := "{content_default}",
@locale_kokr := "{locale_kokr}",
@locale_frfr := "{locale_frfr}",
@locale_dede := "{locale_dede}",
@locale_zhcn := "{locale_zhcn}",
@locale_zhtw := "{locale_zhtw}",
@locale_eses := "{locale_eses}",
@locale_esmx := "{locale_esmx}",
@locale_ruru := "{locale_ruru}";

DELETE FROM acore_string WHERE
    entry=@entry
;

INSERT INTO acore_string (
    `entry`,
    `content_default`,
    `locale_kokr`,
    `locale_frfr`,
    `locale_dede`,
    `locale_zhcn`,
    `locale_zhtw`,
    `locale_eses`,
    `locale_esmx`,
    `locale_ruru`
)
VALUES (
    @entry,
    @content_default,
    @locale_kokr,
    @locale_frfr,
    @locale_dede,
    @locale_zhcn,
    @locale_zhtw,
    @locale_eses,
    @locale_esmx,
    @locale_ruru
);
-- EOF acore_string