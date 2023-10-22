-- BEGIN: skillraceclassinfo_dbc
SET
@id := {id},
@skillid := {skillid},
@racemask := {racemask},
@classmask := {classmask},
@flags := {flags},
@minlevel := {minlevel},
@skilltierid := {skilltierid},
@skillcostindex := {skillcostindex};

DELETE FROM skillraceclassinfo_dbc WHERE
    id=@id
;

INSERT INTO skillraceclassinfo_dbc (
    id,
    skillid,
    racemask,
    classmask,
    flags,
    minlevel,
    skilltierid,
    skillcostindex
)
VALUES (
    @id,
    @skillid,
    @racemask,
    @classmask,
    @flags,
    @minlevel,
    @skilltierid,
    @skillcostindex
);

-- END: skillraceclassinfo_dbc