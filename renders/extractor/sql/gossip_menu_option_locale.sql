
-- START gossip_menu_option_locale
SET
@menuid := {menuid},
@optionid := {optionid},
@locale := '{locale}',
@optiontext := '{optiontext}',
@boxtext := '{boxtext}';

DELETE FROM gossip_menu_option_locale WHERE
    menuid=@menuid AND
    optionid=@optionid AND
    locale=@locale
;

INSERT INTO gossip_menu_option_locale (
    menuid,
    optionid,
    locale,
    optiontext,
    boxtext
)
VALUES (
    @menuid,
    @optionid,
    @locale,
    @optiontext,
    @boxtext
);
-- EOF gossip_menu_option_locale