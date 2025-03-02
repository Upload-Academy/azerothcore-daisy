
-- START gossip_menu_option
SET
@menuid := {menuid},
@optionid := {optionid},
@optionicon := {optionicon},
@optiontext := "{optiontext}",
@optionbroadcasttextid := {optionbroadcasttextid},
@optiontype := {optiontype},
@optionnpcflag := {optionnpcflag},
@actionmenuid := {actionmenuid},
@actionpoiid := {actionpoiid},
@boxcoded := {boxcoded},
@boxmoney := {boxmoney},
@boxtext := "{boxtext}",
@boxbroadcasttextid := {boxbroadcasttextid},
@verifiedbuild := {verifiedbuild};

DELETE FROM gossip_menu_option WHERE
    menuid=@menuid AND
    optionid=@optionid
;

INSERT INTO gossip_menu_option (
    `menuid`,
    `optionid`,
    `optionicon`,
    `optiontext`,
    `optionbroadcasttextid`,
    `optiontype`,
    `optionnpcflag`,
    `actionmenuid`,
    `actionpoiid`,
    `boxcoded`,
    `boxmoney`,
    `boxtext`,
    `boxbroadcasttextid`,
    `verifiedbuild`
)
VALUES (
    @menuid,
    @optionid,
    @optionicon,
    @optiontext,
    @optionbroadcasttextid,
    @optiontype,
    @optionnpcflag,
    @actionmenuid,
    @actionpoiid,
    @boxcoded,
    @boxmoney,
    @boxtext,
    @boxbroadcasttextid,
    @verifiedbuild
);
-- EOF gossip_menu_option