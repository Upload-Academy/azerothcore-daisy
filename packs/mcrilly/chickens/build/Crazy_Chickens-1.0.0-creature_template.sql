
-- START creature_template
SET
@entry := 500100,
@difficulty_entry_1 := 0,
@difficulty_entry_2 := 0,
@difficulty_entry_3 := 0,
@killcredit1 := 0,
@killcredit2 := 0,
@name := "Crazy Chicken",
@subname := "Pecky",
@iconname := "",
@gossip_menu_id := 0,
@minlevel := 2,
@maxlevel := 5,
@exp := 0,
@faction := 38,
@npcflag := 0,
@speed_walk := 1,
@speed_run := 1.14286,
@speed_swim := 1,
@speed_flight := 1,
@detection_range := 20,
@scale := 2.5,
@rank := 0,
@dmgschool := 0,
@damagemodifier := 2.0,
@baseattacktime := 0,
@rangeattacktime := 0,
@basevariance := 1,
@rangevariance := 1,
@unit_class := 1,
@unit_flags := 0,
@unit_flags2 := 0,
@dynamicflags := 0,
@family := 0,
@trainer_type := 0,
@trainer_spell := 0,
@trainer_class := 0,
@trainer_race := 0,
@type := 1,
@type_flags := 0,
@lootid := 0,
@pickpocketloot := 0,
@skinloot := 0,
@petspelldataid := 0,
@vehicleid := 0,
@mingold := 5,
@maxgold := 15,
@ainame := "",
@movementtype := 0,
@hoverheight := 1,
@healthmodifier := 1,
@manamodifier := 1,
@armormodifier := 1,
@experiencemodifier := 3.0,
@racialleader := 0,
@movementid := 0,
@regenhealth := 1,
@mechanic_immune_mask := 0,
@spell_school_immune_mask := 0,
@flags_extra := 0,
@scriptname := "",
@verifiedbuild := 0;

DELETE FROM creature_template WHERE
    entry=@entry
;

INSERT INTO creature_template (
    `entry`,
    `difficulty_entry_1`,
    `difficulty_entry_2`,
    `difficulty_entry_3`,
    `killcredit1`,
    `killcredit2`,
    `name`,
    `subname`,
    `iconname`,
    `gossip_menu_id`,
    `minlevel`,
    `maxlevel`,
    `exp`,
    `faction`,
    `npcflag`,
    `speed_walk`,
    `speed_run`,
    `speed_swim`,
    `speed_flight`,
    `detection_range`,
    `scale`,
    `rank`,
    `dmgschool`,
    `damagemodifier`,
    `baseattacktime`,
    `rangeattacktime`,
    `basevariance`,
    `rangevariance`,
    `unit_class`,
    `unit_flags`,
    `unit_flags2`,
    `dynamicflags`,
    `family`,
    `trainer_type`,
    `trainer_spell`,
    `trainer_class`,
    `trainer_race`,
    `type`,
    `type_flags`,
    `lootid`,
    `pickpocketloot`,
    `skinloot`,
    `petspelldataid`,
    `vehicleid`,
    `mingold`,
    `maxgold`,
    `ainame`,
    `movementtype`,
    `hoverheight`,
    `healthmodifier`,
    `manamodifier`,
    `armormodifier`,
    `experiencemodifier`,
    `racialleader`,
    `movementid`,
    `regenhealth`,
    `mechanic_immune_mask`,
    `spell_school_immune_mask`,
    `flags_extra`,
    `scriptname`,
    `verifiedbuild`
)
VALUES (
    @entry,
    @difficulty_entry_1,
    @difficulty_entry_2,
    @difficulty_entry_3,
    @killcredit1,
    @killcredit2,
    @name,
    @subname,
    @iconname,
    @gossip_menu_id,
    @minlevel,
    @maxlevel,
    @exp,
    @faction,
    @npcflag,
    @speed_walk,
    @speed_run,
    @speed_swim,
    @speed_flight,
    @detection_range,
    @scale,
    @rank,
    @dmgschool,
    @damagemodifier,
    @baseattacktime,
    @rangeattacktime,
    @basevariance,
    @rangevariance,
    @unit_class,
    @unit_flags,
    @unit_flags2,
    @dynamicflags,
    @family,
    @trainer_type,
    @trainer_spell,
    @trainer_class,
    @trainer_race,
    @type,
    @type_flags,
    @lootid,
    @pickpocketloot,
    @skinloot,
    @petspelldataid,
    @vehicleid,
    @mingold,
    @maxgold,
    @ainame,
    @movementtype,
    @hoverheight,
    @healthmodifier,
    @manamodifier,
    @armormodifier,
    @experiencemodifier,
    @racialleader,
    @movementid,
    @regenhealth,
    @mechanic_immune_mask,
    @spell_school_immune_mask,
    @flags_extra,
    @scriptname,
    @verifiedbuild
);
-- EOF creature_template
-- START creature_template
SET
@entry := 500101,
@difficulty_entry_1 := 0,
@difficulty_entry_2 := 0,
@difficulty_entry_3 := 0,
@killcredit1 := 0,
@killcredit2 := 0,
@name := "Magic Chicken",
@subname := "Healz",
@iconname := "",
@gossip_menu_id := 0,
@minlevel := 2,
@maxlevel := 5,
@exp := 0,
@faction := 38,
@npcflag := 0,
@speed_walk := 1,
@speed_run := 1.14286,
@speed_swim := 1,
@speed_flight := 1,
@detection_range := 20,
@scale := 2.5,
@rank := 0,
@dmgschool := 0,
@damagemodifier := 2.0,
@baseattacktime := 0,
@rangeattacktime := 0,
@basevariance := 1,
@rangevariance := 1,
@unit_class := 1,
@unit_flags := 0,
@unit_flags2 := 0,
@dynamicflags := 0,
@family := 0,
@trainer_type := 0,
@trainer_spell := 0,
@trainer_class := 0,
@trainer_race := 0,
@type := 1,
@type_flags := 0,
@lootid := 0,
@pickpocketloot := 0,
@skinloot := 0,
@petspelldataid := 0,
@vehicleid := 0,
@mingold := 8,
@maxgold := 21,
@ainame := "",
@movementtype := 0,
@hoverheight := 1,
@healthmodifier := 1,
@manamodifier := 1,
@armormodifier := 1,
@experiencemodifier := 3.0,
@racialleader := 0,
@movementid := 0,
@regenhealth := 1,
@mechanic_immune_mask := 0,
@spell_school_immune_mask := 0,
@flags_extra := 0,
@scriptname := "",
@verifiedbuild := 0;

DELETE FROM creature_template WHERE
    entry=@entry
;

INSERT INTO creature_template (
    `entry`,
    `difficulty_entry_1`,
    `difficulty_entry_2`,
    `difficulty_entry_3`,
    `killcredit1`,
    `killcredit2`,
    `name`,
    `subname`,
    `iconname`,
    `gossip_menu_id`,
    `minlevel`,
    `maxlevel`,
    `exp`,
    `faction`,
    `npcflag`,
    `speed_walk`,
    `speed_run`,
    `speed_swim`,
    `speed_flight`,
    `detection_range`,
    `scale`,
    `rank`,
    `dmgschool`,
    `damagemodifier`,
    `baseattacktime`,
    `rangeattacktime`,
    `basevariance`,
    `rangevariance`,
    `unit_class`,
    `unit_flags`,
    `unit_flags2`,
    `dynamicflags`,
    `family`,
    `trainer_type`,
    `trainer_spell`,
    `trainer_class`,
    `trainer_race`,
    `type`,
    `type_flags`,
    `lootid`,
    `pickpocketloot`,
    `skinloot`,
    `petspelldataid`,
    `vehicleid`,
    `mingold`,
    `maxgold`,
    `ainame`,
    `movementtype`,
    `hoverheight`,
    `healthmodifier`,
    `manamodifier`,
    `armormodifier`,
    `experiencemodifier`,
    `racialleader`,
    `movementid`,
    `regenhealth`,
    `mechanic_immune_mask`,
    `spell_school_immune_mask`,
    `flags_extra`,
    `scriptname`,
    `verifiedbuild`
)
VALUES (
    @entry,
    @difficulty_entry_1,
    @difficulty_entry_2,
    @difficulty_entry_3,
    @killcredit1,
    @killcredit2,
    @name,
    @subname,
    @iconname,
    @gossip_menu_id,
    @minlevel,
    @maxlevel,
    @exp,
    @faction,
    @npcflag,
    @speed_walk,
    @speed_run,
    @speed_swim,
    @speed_flight,
    @detection_range,
    @scale,
    @rank,
    @dmgschool,
    @damagemodifier,
    @baseattacktime,
    @rangeattacktime,
    @basevariance,
    @rangevariance,
    @unit_class,
    @unit_flags,
    @unit_flags2,
    @dynamicflags,
    @family,
    @trainer_type,
    @trainer_spell,
    @trainer_class,
    @trainer_race,
    @type,
    @type_flags,
    @lootid,
    @pickpocketloot,
    @skinloot,
    @petspelldataid,
    @vehicleid,
    @mingold,
    @maxgold,
    @ainame,
    @movementtype,
    @hoverheight,
    @healthmodifier,
    @manamodifier,
    @armormodifier,
    @experiencemodifier,
    @racialleader,
    @movementid,
    @regenhealth,
    @mechanic_immune_mask,
    @spell_school_immune_mask,
    @flags_extra,
    @scriptname,
    @verifiedbuild
);
-- EOF creature_template