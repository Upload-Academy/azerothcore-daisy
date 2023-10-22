-- BEGIN: gossip_menu
SET
@menuid := {menuid},
@textid := {textid};

DELETE FROM gossip_menu WHERE
    menuid=@menuid AND
    textid=@textid
;

INSERT INTO gossip_menu (
    menuid,
    textid
)
VALUES (
    @menuid,
    @textid
);

-- END: gossip_menu