-- BEGIN: gameobject_queststarter
SET
@id := {id},
@quest := {quest};

DELETE FROM gameobject_queststarter WHERE
    id=@id AND
    quest=@quest
;

INSERT INTO gameobject_queststarter (
    id,
    quest
)
VALUES (
    @id,
    @quest
);

-- END: gameobject_queststarter