-- BEGIN: game_event_npc_vendor
SET
@evententry := {evententry},
@guid := {guid},
@slot := {slot},
@item := {item},
@maxcount := {maxcount},
@incrtime := {incrtime},
@extendedcost := {extendedcost};

DELETE FROM game_event_npc_vendor WHERE
    guid=@guid AND
    item=@item
;

INSERT INTO game_event_npc_vendor (
    evententry,
    guid,
    slot,
    item,
    maxcount,
    incrtime,
    extendedcost
)
VALUES (
    @evententry,
    @guid,
    @slot,
    @item,
    @maxcount,
    @incrtime,
    @extendedcost
);

-- END: game_event_npc_vendor