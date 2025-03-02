
-- START spell_cooldown_overrides
SET
@id := {id},
@recoverytime := {recoverytime},
@categoryrecoverytime := {categoryrecoverytime},
@startrecoverytime := {startrecoverytime},
@startrecoverycategory := {startrecoverycategory},
@comment := "{comment}";

DELETE FROM spell_cooldown_overrides WHERE
    id=@id
;

INSERT INTO spell_cooldown_overrides (
    `id`,
    `recoverytime`,
    `categoryrecoverytime`,
    `startrecoverytime`,
    `startrecoverycategory`,
    `comment`
)
VALUES (
    @id,
    @recoverytime,
    @categoryrecoverytime,
    @startrecoverytime,
    @startrecoverycategory,
    @comment
);
-- EOF spell_cooldown_overrides