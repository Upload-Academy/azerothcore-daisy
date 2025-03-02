
-- START npc_trainer
SET
@id := {id},
@spellid := {spellid},
@moneycost := {moneycost},
@reqskillline := {reqskillline},
@reqskillrank := {reqskillrank},
@reqlevel := {reqlevel},
@reqspell := {reqspell};

DELETE FROM npc_trainer WHERE
    id=@id AND
    spellid=@spellid
;

INSERT INTO npc_trainer (
    `id`,
    `spellid`,
    `moneycost`,
    `reqskillline`,
    `reqskillrank`,
    `reqlevel`,
    `reqspell`
)
VALUES (
    @id,
    @spellid,
    @moneycost,
    @reqskillline,
    @reqskillrank,
    @reqlevel,
    @reqspell
);
-- EOF npc_trainer