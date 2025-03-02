
-- START battleground_template
SET
@id := {id},
@minplayersperteam := {minplayersperteam},
@maxplayersperteam := {maxplayersperteam},
@minlvl := {minlvl},
@maxlvl := {maxlvl},
@alliancestartloc := {alliancestartloc},
@alliancestarto := {alliancestarto},
@hordestartloc := {hordestartloc},
@hordestarto := {hordestarto},
@startmaxdist := {startmaxdist},
@weight := {weight},
@scriptname := "{scriptname}",
@comment := "{comment}";

DELETE FROM battleground_template WHERE
    id=@id
;

INSERT INTO battleground_template (
    `id`,
    `minplayersperteam`,
    `maxplayersperteam`,
    `minlvl`,
    `maxlvl`,
    `alliancestartloc`,
    `alliancestarto`,
    `hordestartloc`,
    `hordestarto`,
    `startmaxdist`,
    `weight`,
    `scriptname`,
    `comment`
)
VALUES (
    @id,
    @minplayersperteam,
    @maxplayersperteam,
    @minlvl,
    @maxlvl,
    @alliancestartloc,
    @alliancestarto,
    @hordestartloc,
    @hordestarto,
    @startmaxdist,
    @weight,
    @scriptname,
    @comment
);
-- EOF battleground_template