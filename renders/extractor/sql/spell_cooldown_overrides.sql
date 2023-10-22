-- BEGIN: spell_cooldown_overrides
SET
@id := {id},
@recoverytime := {recoverytime},
@categoryrecoverytime := {categoryrecoverytime},
@startrecoverytime := {startrecoverytime},
@startrecoverycategory := {startrecoverycategory};

DELETE FROM spell_cooldown_overrides WHERE
    id=@id
;

INSERT INTO spell_cooldown_overrides (
    id,
    recoverytime,
    categoryrecoverytime,
    startrecoverytime,
    startrecoverycategory
)
VALUES (
    @id,
    @recoverytime,
    @categoryrecoverytime,
    @startrecoverytime,
    @startrecoverycategory
);

-- END: spell_cooldown_overrides