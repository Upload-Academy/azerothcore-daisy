
-- START quest_template_addon
SET
@id := {id},
@maxlevel := {maxlevel},
@allowableclasses := {allowableclasses},
@sourcespellid := {sourcespellid},
@prevquestid := {prevquestid},
@nextquestid := {nextquestid},
@exclusivegroup := {exclusivegroup},
@rewardmailtemplateid := {rewardmailtemplateid},
@rewardmaildelay := {rewardmaildelay},
@requiredskillid := {requiredskillid},
@requiredskillpoints := {requiredskillpoints},
@requiredminrepfaction := {requiredminrepfaction},
@requiredmaxrepfaction := {requiredmaxrepfaction},
@requiredminrepvalue := {requiredminrepvalue},
@requiredmaxrepvalue := {requiredmaxrepvalue},
@provideditemcount := {provideditemcount},
@specialflags := {specialflags};

DELETE FROM quest_template_addon WHERE
    id=@id
;

INSERT INTO quest_template_addon (
    id,
    maxlevel,
    allowableclasses,
    sourcespellid,
    prevquestid,
    nextquestid,
    exclusivegroup,
    rewardmailtemplateid,
    rewardmaildelay,
    requiredskillid,
    requiredskillpoints,
    requiredminrepfaction,
    requiredmaxrepfaction,
    requiredminrepvalue,
    requiredmaxrepvalue,
    provideditemcount,
    specialflags
)
VALUES (
    @id,
    @maxlevel,
    @allowableclasses,
    @sourcespellid,
    @prevquestid,
    @nextquestid,
    @exclusivegroup,
    @rewardmailtemplateid,
    @rewardmaildelay,
    @requiredskillid,
    @requiredskillpoints,
    @requiredminrepfaction,
    @requiredmaxrepfaction,
    @requiredminrepvalue,
    @requiredmaxrepvalue,
    @provideditemcount,
    @specialflags
);
-- EOF quest_template_addon