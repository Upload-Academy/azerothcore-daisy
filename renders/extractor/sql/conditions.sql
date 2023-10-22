-- BEGIN: conditions
SET
@sourcetypeorreferenceid := {sourcetypeorreferenceid},
@sourcegroup := {sourcegroup},
@sourceentry := {sourceentry},
@sourceid := {sourceid},
@elsegroup := {elsegroup},
@conditiontypeorreference := {conditiontypeorreference},
@conditiontarget := {conditiontarget},
@conditionvalue1 := {conditionvalue1},
@conditionvalue2 := {conditionvalue2},
@conditionvalue3 := {conditionvalue3},
@negativecondition := {negativecondition},
@errortype := {errortype},
@errortextid := {errortextid},
@scriptname := '{scriptname}',
@comment := '{comment}';

DELETE FROM conditions WHERE
    sourcetypeorreferenceid=@sourcetypeorreferenceid AND
    sourcegroup=@sourcegroup AND
    sourceentry=@sourceentry AND
    sourceid=@sourceid AND
    elsegroup=@elsegroup AND
    conditiontypeorreference=@conditiontypeorreference AND
    conditiontarget=@conditiontarget AND
    conditionvalue1=@conditionvalue1 AND
    conditionvalue2=@conditionvalue2 AND
    conditionvalue3=@conditionvalue3
;

INSERT INTO conditions (
    sourcetypeorreferenceid,
    sourcegroup,
    sourceentry,
    sourceid,
    elsegroup,
    conditiontypeorreference,
    conditiontarget,
    conditionvalue1,
    conditionvalue2,
    conditionvalue3,
    negativecondition,
    errortype,
    errortextid,
    scriptname,
    comment
)
VALUES (
    @sourcetypeorreferenceid,
    @sourcegroup,
    @sourceentry,
    @sourceid,
    @elsegroup,
    @conditiontypeorreference,
    @conditiontarget,
    @conditionvalue1,
    @conditionvalue2,
    @conditionvalue3,
    @negativecondition,
    @errortype,
    @errortextid,
    @scriptname,
    @comment
);

-- END: conditions