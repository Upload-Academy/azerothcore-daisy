-- BEGIN: creature_queststarter
SET
@id := {id},
@quest := {quest};

DELETE FROM creature_queststarter WHERE
    id=@id AND
    quest=@quest
;

INSERT INTO creature_queststarter (
    id,
    quest
)
VALUES (
    @id,
    @quest
);

-- END: creature_queststarter