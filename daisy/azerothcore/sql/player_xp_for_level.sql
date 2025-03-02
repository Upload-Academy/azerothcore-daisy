
-- START player_xp_for_level
SET
@level := {level},
@experience := {experience};

DELETE FROM player_xp_for_level WHERE
    level=@level
;

INSERT INTO player_xp_for_level (
    `level`,
    `experience`
)
VALUES (
    @level,
    @experience
);
-- EOF player_xp_for_level