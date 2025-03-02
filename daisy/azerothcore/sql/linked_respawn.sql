
-- START linked_respawn
SET
@guid := {guid},
@linkedguid := {linkedguid},
@linktype := {linktype};

DELETE FROM linked_respawn WHERE
    guid=@guid AND
    linktype=@linktype
;

INSERT INTO linked_respawn (
    `guid`,
    `linkedguid`,
    `linktype`
)
VALUES (
    @guid,
    @linkedguid,
    @linktype
);
-- EOF linked_respawn