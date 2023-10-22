-- BEGIN: gameobject_questender
SET
@id := {id},
@quest := {quest};

DELETE FROM gameobject_questender WHERE
    id=@id AND
    quest=@quest
;

INSERT INTO gameobject_questender (
    id,
    quest
)
VALUES (
    @id,
    @quest
);

-- END: gameobject_questender