
-- START vehicleseat_dbc
SET
@id := {id},
@flags := {flags},
@attachmentid := {attachmentid},
@attachmentoffsetx := {attachmentoffsetx},
@attachmentoffsety := {attachmentoffsety},
@attachmentoffsetz := {attachmentoffsetz},
@enterpredelay := {enterpredelay},
@enterspeed := {enterspeed},
@entergravity := {entergravity},
@enterminduration := {enterminduration},
@entermaxduration := {entermaxduration},
@enterminarcheight := {enterminarcheight},
@entermaxarcheight := {entermaxarcheight},
@enteranimstart := {enteranimstart},
@enteranimloop := {enteranimloop},
@rideanimstart := {rideanimstart},
@rideanimloop := {rideanimloop},
@rideupperanimstart := {rideupperanimstart},
@rideupperanimloop := {rideupperanimloop},
@exitpredelay := {exitpredelay},
@exitspeed := {exitspeed},
@exitgravity := {exitgravity},
@exitminduration := {exitminduration},
@exitmaxduration := {exitmaxduration},
@exitminarcheight := {exitminarcheight},
@exitmaxarcheight := {exitmaxarcheight},
@exitanimstart := {exitanimstart},
@exitanimloop := {exitanimloop},
@exitanimend := {exitanimend},
@passengeryaw := {passengeryaw},
@passengerpitch := {passengerpitch},
@passengerroll := {passengerroll},
@passengerattachmentid := {passengerattachmentid},
@vehicleenteranim := {vehicleenteranim},
@vehicleexitanim := {vehicleexitanim},
@vehiclerideanimloop := {vehiclerideanimloop},
@vehicleenteranimbone := {vehicleenteranimbone},
@vehicleexitanimbone := {vehicleexitanimbone},
@vehiclerideanimloopbone := {vehiclerideanimloopbone},
@vehicleenteranimdelay := {vehicleenteranimdelay},
@vehicleexitanimdelay := {vehicleexitanimdelay},
@vehicleabilitydisplay := {vehicleabilitydisplay},
@enteruisoundid := {enteruisoundid},
@exituisoundid := {exituisoundid},
@uiskin := {uiskin},
@flagsb := {flagsb},
@cameraenteringdelay := {cameraenteringdelay},
@cameraenteringduration := {cameraenteringduration},
@cameraexitingdelay := {cameraexitingdelay},
@cameraexitingduration := {cameraexitingduration},
@cameraoffsetx := {cameraoffsetx},
@cameraoffsety := {cameraoffsety},
@cameraoffsetz := {cameraoffsetz},
@cameraposchaserate := {cameraposchaserate},
@camerafacingchaserate := {camerafacingchaserate},
@cameraenteringzoom := {cameraenteringzoom},
@cameraseatzoommin := {cameraseatzoommin},
@cameraseatzoommax := {cameraseatzoommax};

DELETE FROM vehicleseat_dbc WHERE
    id=@id
;

INSERT INTO vehicleseat_dbc (
    `id`,
    `flags`,
    `attachmentid`,
    `attachmentoffsetx`,
    `attachmentoffsety`,
    `attachmentoffsetz`,
    `enterpredelay`,
    `enterspeed`,
    `entergravity`,
    `enterminduration`,
    `entermaxduration`,
    `enterminarcheight`,
    `entermaxarcheight`,
    `enteranimstart`,
    `enteranimloop`,
    `rideanimstart`,
    `rideanimloop`,
    `rideupperanimstart`,
    `rideupperanimloop`,
    `exitpredelay`,
    `exitspeed`,
    `exitgravity`,
    `exitminduration`,
    `exitmaxduration`,
    `exitminarcheight`,
    `exitmaxarcheight`,
    `exitanimstart`,
    `exitanimloop`,
    `exitanimend`,
    `passengeryaw`,
    `passengerpitch`,
    `passengerroll`,
    `passengerattachmentid`,
    `vehicleenteranim`,
    `vehicleexitanim`,
    `vehiclerideanimloop`,
    `vehicleenteranimbone`,
    `vehicleexitanimbone`,
    `vehiclerideanimloopbone`,
    `vehicleenteranimdelay`,
    `vehicleexitanimdelay`,
    `vehicleabilitydisplay`,
    `enteruisoundid`,
    `exituisoundid`,
    `uiskin`,
    `flagsb`,
    `cameraenteringdelay`,
    `cameraenteringduration`,
    `cameraexitingdelay`,
    `cameraexitingduration`,
    `cameraoffsetx`,
    `cameraoffsety`,
    `cameraoffsetz`,
    `cameraposchaserate`,
    `camerafacingchaserate`,
    `cameraenteringzoom`,
    `cameraseatzoommin`,
    `cameraseatzoommax`
)
VALUES (
    @id,
    @flags,
    @attachmentid,
    @attachmentoffsetx,
    @attachmentoffsety,
    @attachmentoffsetz,
    @enterpredelay,
    @enterspeed,
    @entergravity,
    @enterminduration,
    @entermaxduration,
    @enterminarcheight,
    @entermaxarcheight,
    @enteranimstart,
    @enteranimloop,
    @rideanimstart,
    @rideanimloop,
    @rideupperanimstart,
    @rideupperanimloop,
    @exitpredelay,
    @exitspeed,
    @exitgravity,
    @exitminduration,
    @exitmaxduration,
    @exitminarcheight,
    @exitmaxarcheight,
    @exitanimstart,
    @exitanimloop,
    @exitanimend,
    @passengeryaw,
    @passengerpitch,
    @passengerroll,
    @passengerattachmentid,
    @vehicleenteranim,
    @vehicleexitanim,
    @vehiclerideanimloop,
    @vehicleenteranimbone,
    @vehicleexitanimbone,
    @vehiclerideanimloopbone,
    @vehicleenteranimdelay,
    @vehicleexitanimdelay,
    @vehicleabilitydisplay,
    @enteruisoundid,
    @exituisoundid,
    @uiskin,
    @flagsb,
    @cameraenteringdelay,
    @cameraenteringduration,
    @cameraexitingdelay,
    @cameraexitingduration,
    @cameraoffsetx,
    @cameraoffsety,
    @cameraoffsetz,
    @cameraposchaserate,
    @camerafacingchaserate,
    @cameraenteringzoom,
    @cameraseatzoommin,
    @cameraseatzoommax
);
-- EOF vehicleseat_dbc