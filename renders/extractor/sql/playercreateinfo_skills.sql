-- BEGIN: playercreateinfo_skills
SET
@racemask := {racemask},
@classmask := {classmask},
@skill := {skill},
@rank := {rank},
@comment := '{comment}';

DELETE FROM playercreateinfo_skills WHERE
    racemask=@racemask AND
    classmask=@classmask AND
    skill=@skill
;

INSERT INTO playercreateinfo_skills (
    racemask,
    classmask,
    skill,
    rank,
    comment
)
VALUES (
    @racemask,
    @classmask,
    @skill,
    @rank,
    @comment
);

-- END: playercreateinfo_skills