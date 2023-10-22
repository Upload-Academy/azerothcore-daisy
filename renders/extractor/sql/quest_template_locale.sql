
-- START quest_template_locale
SET
@id := {id},
@locale := '{locale}',
@title := '{title}',
@details := '{details}',
@objectives := '{objectives}',
@endtext := '{endtext}',
@completedtext := '{completedtext}',
@objectivetext1 := '{objectivetext1}',
@objectivetext2 := '{objectivetext2}',
@objectivetext3 := '{objectivetext3}',
@objectivetext4 := '{objectivetext4}',
@verifiedbuild := {verifiedbuild};

DELETE FROM quest_template_locale WHERE
    id=@id AND
    locale=@locale
;

INSERT INTO quest_template_locale (
    id,
    locale,
    title,
    details,
    objectives,
    endtext,
    completedtext,
    objectivetext1,
    objectivetext2,
    objectivetext3,
    objectivetext4,
    verifiedbuild
)
VALUES (
    @id,
    @locale,
    @title,
    @details,
    @objectives,
    @endtext,
    @completedtext,
    @objectivetext1,
    @objectivetext2,
    @objectivetext3,
    @objectivetext4,
    @verifiedbuild
);
-- EOF quest_template_locale