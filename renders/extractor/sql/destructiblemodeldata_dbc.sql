
-- START destructiblemodeldata_dbc
SET
@id := {id},
@state0wmo := {state0wmo},
@state0destructiondoodadset := {state0destructiondoodadset},
@state0impacteffectdoodadset := {state0impacteffectdoodadset},
@state0ambientdoodadset := {state0ambientdoodadset},
@state1wmo := {state1wmo},
@state1destructiondoodadset := {state1destructiondoodadset},
@state1impacteffectdoodadset := {state1impacteffectdoodadset},
@state1ambientdoodadset := {state1ambientdoodadset},
@state2wmo := {state2wmo},
@state2destructiondoodadset := {state2destructiondoodadset},
@state2impacteffectdoodadset := {state2impacteffectdoodadset},
@state2ambientdoodadset := {state2ambientdoodadset},
@state3wmo := {state3wmo},
@state3destructiondoodadset := {state3destructiondoodadset},
@state3impacteffectdoodadset := {state3impacteffectdoodadset},
@state3ambientdoodadset := {state3ambientdoodadset},
@field17 := {field17},
@field18 := {field18};

DELETE FROM destructiblemodeldata_dbc WHERE
    id=@id
;

INSERT INTO destructiblemodeldata_dbc (
    id,
    state0wmo,
    state0destructiondoodadset,
    state0impacteffectdoodadset,
    state0ambientdoodadset,
    state1wmo,
    state1destructiondoodadset,
    state1impacteffectdoodadset,
    state1ambientdoodadset,
    state2wmo,
    state2destructiondoodadset,
    state2impacteffectdoodadset,
    state2ambientdoodadset,
    state3wmo,
    state3destructiondoodadset,
    state3impacteffectdoodadset,
    state3ambientdoodadset,
    field17,
    field18
)
VALUES (
    @id,
    @state0wmo,
    @state0destructiondoodadset,
    @state0impacteffectdoodadset,
    @state0ambientdoodadset,
    @state1wmo,
    @state1destructiondoodadset,
    @state1impacteffectdoodadset,
    @state1ambientdoodadset,
    @state2wmo,
    @state2destructiondoodadset,
    @state2impacteffectdoodadset,
    @state2ambientdoodadset,
    @state3wmo,
    @state3destructiondoodadset,
    @state3impacteffectdoodadset,
    @state3ambientdoodadset,
    @field17,
    @field18
);
-- EOF destructiblemodeldata_dbc