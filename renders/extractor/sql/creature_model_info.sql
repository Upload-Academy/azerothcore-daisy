-- BEGIN: creature_model_info
SET
@displayid := {displayid},
@boundingradius := {boundingradius},
@combatreach := {combatreach},
@gender := {gender},
@displayid_other_gender := {displayid_other_gender};

DELETE FROM creature_model_info WHERE
    displayid=@displayid
;

INSERT INTO creature_model_info (
    displayid,
    boundingradius,
    combatreach,
    gender,
    displayid_other_gender
)
VALUES (
    @displayid,
    @boundingradius,
    @combatreach,
    @gender,
    @displayid_other_gender
);

-- END: creature_model_info