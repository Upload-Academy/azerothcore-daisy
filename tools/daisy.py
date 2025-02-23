
import argparse
import os
import sys
import shutil
import ruamel.yaml
import importlib
import jinja2

from pathlib import Path

DEBUGGING = os.getenv("DEBUGGING") or False

yaml = ruamel.yaml.YAML()
yaml.preserve_quotes = True

templateLoader = jinja2.FileSystemLoader(searchpath="templates/")
templateEnv = jinja2.Environment(loader=templateLoader)

pack = None

def parse_yaml(pack, pack_constants = None, global_constants = True):
    results = ""

    if global_constants:
        with open("packs/_constants/constants.yaml", 'r') as fd:
            results += fd.read()

    if pack_constants:
        with open(pack_constants) as fd:
            results += fd.read()

    with open(pack, 'r') as fd:
        results += fd.read()

    return yaml.load(results)

def moves(data):
    if 'move' not in data:
        return False, "No move key in data"

    if len(data['move']) <= 0:
        return False, "No move(s) defined"

    for m in data['move']:
        final_file_path = make_pack_path(data, "moves")
        final_result = open(final_file_path, "a")
        template = templateEnv.get_template('sql_move_creature.j2')
        result = template.render(data=m)
        final_result.write(result)
        final_result.close()

    return True, None

def deletes(data):
    if 'delete' not in data:
        return False, "No delete key in data"

    if len(data['delete']) <= 0:
        return False, "No delete(s) defined"

    for x in data['delete']:
        final_file_path = make_pack_path(data, "deletes")
        final_result = open(final_file_path, "a")
        template = templateEnv.get_template('sql_delete_creature.j2')
        result = template.render(data=x)
        final_result.write(result)
        final_result.close()

    return True, None

def updates(data):
    if 'update' not in data:
        return False, "No update key in data"

    if len(data['update']) <= 0:
        return False, "No update(s) defined"

    for x in data['update']:
        final_file_path = make_pack_path(data, "updates")
        final_result = open(final_file_path, "a")
        template = templateEnv.get_template('generic_update.j2')
        result = template.render(data=x)
        final_result.write(result)
        final_result.close()

    return True, None


def tables(data):
    if 'tables' not in data:
        return False, "No tables key in data"
    
    if len(data['tables']) <= 0:
        return False, "No tables defined"

    for ti, tk in enumerate(data['tables']):
        for ei, entry in enumerate(data['tables'][tk]):
            final_file_path = make_pack_path(data, tk)
            final_result = open(final_file_path, "a")

            # Open the YAML file containing the table's column fields and their
            # default values
            defaults = parse_yaml(f"mappings/yaml/{tk}.yaml")

            # Dynamically load the Python module that contains the wrapper function around
            # the SQL template and the data structure it expects to see
            module = importlib.import_module(f"mappings.py.{tk}", package=None)

            # Get the function from the module
            sqlfunc = getattr(module, f"sql_new_{tk}")
            
            # Extract and merge the defaults with our values
            # (Our values "win", and override identical keys found in defaults)
            merged = {**defaults[tk], **entry}

            # And finally, write the .sql file, ready to be imported into the DB
            final_result.write(sqlfunc(merged, f"mappings/sql/{tk}.sql"))
            final_result.close()

    return True, None

def make_safe_name(name, version):
    safe_name = name.replace(' ', '_')
    safe_version = version.replace(' ', '_')
    return f"{safe_name}-{safe_version}"

def make_pack_path(data, filename, ext="sql"):
    safe_name = make_safe_name(data['pack']['name'], data['pack']['version'])
    p = f"{data['pack']['build']}/{safe_name}-{filename}.{ext}"
    return p

def find_code(name, path):
    all_packs = []
    
    for root, dirs, files in os.walk(path):
        for filename in files:
            if name in filename:
                all_packs.append(os.path.join(root, filename))
    
    return all_packs

def exit_on_missing_key(p, k):
    if not k in p:
        print(f'Error in "{p}": missing key "{k}"')
        sys.exit(1)

def new_pack(args):
    os.makedirs(f"packs/{args.new}/src")
    with open(f"packs/{args.new}/pack.yaml", "w") as fd:
        yaml.dump(
            {
                "daisy": {
                    "pack": {
                        "name": "New Pack",
                        "version": "1.0.0",
                        "author": "Some Awesome Person",
                        "homepage": "https://",
                        "source": f"packs/{args.new}/src",
                        "build": f"packs/{args.new}/output",
                    }
                }
            }, fd)

    sys.exit(0)

def new_extractor(args):
    with open(f"extractor.yaml", "w") as fd:
        yaml.dump(
            {
                "extractor": {
                    "database": {
                        "db": "acore_world",
                        "hostname": "localhost",
                        "username": "acore",
                        "password": "acore"
                    },
                    "templates": "templates",
                    "output_to": "mappings",
                },
                "tables": [
                    "achievement_category_dbc",
                    "achievement_criteria_data",
                    "achievement_criteria_dbc",
                    "achievement_dbc",
                    "achievement_reward",
                    "achievement_reward_locale",
                    "acore_string",
                    "areagroup_dbc",
                    "areapoi_dbc",
                    "areatable_dbc",
                    "areatrigger",
                    "areatrigger_involvedrelation",
                    "areatrigger_scripts",
                    "areatrigger_tavern",
                    "areatrigger_teleport",
                    "auctionhouse_dbc",
                    "bankbagslotprices_dbc",
                    "barbershopstyle_dbc",
                    "battleground_template",
                    "battlemaster_entry",
                    "battlemasterlist_dbc",
                    "broadcast_text",
                    "broadcast_text_locale",
                    "charstartoutfit_dbc",
                    "chartitles_dbc",
                    "chatchannels_dbc",
                    "chrclasses_dbc",
                    "chrraces_dbc",
                    "cinematiccamera_dbc",
                    "cinematicsequences_dbc",
                    "command",
                    "conditions",
                    "creature",
                    "creature_addon",
                    "creature_classlevelstats",
                    "creature_equip_template",
                    "creature_formations",
                    "creature_loot_template",
                    "creature_model_info",
                    "creature_movement_override",
                    "creature_onkill_reputation",
                    "creature_questender",
                    "creature_questitem",
                    "creature_queststarter",
                    "creature_summon_groups",
                    "creature_template",
                    "creature_template_addon",
                    "creature_template_locale",
                    "creature_template_movement",
                    "creature_template_resistance",
                    "creature_template_spell",
                    "creature_text",
                    "creature_text_locale",
                    "creaturedisplayinfo_dbc",
                    "creaturedisplayinfoextra_dbc",
                    "creaturefamily_dbc",
                    "creaturemodeldata_dbc",
                    "creaturespelldata_dbc",
                    "creaturetype_dbc",
                    "currencytypes_dbc",
                    "destructiblemodeldata_dbc",
                    "disables",
                    "disenchant_loot_template",
                    "dungeon_access_requirements",
                    "dungeon_access_template",
                    "dungeonencounter_dbc",
                    "durabilitycosts_dbc",
                    "durabilityquality_dbc",
                    "emotes_dbc",
                    "emotestext_dbc",
                    "event_scripts",
                    "exploration_basexp",
                    "faction_dbc",
                    "factiontemplate_dbc",
                    "fishing_loot_template",
                    "game_event",
                    "game_event_arena_seasons",
                    "game_event_battleground_holiday",
                    "game_event_condition",
                    "game_event_creature",
                    "game_event_creature_quest",
                    "game_event_gameobject",
                    "game_event_gameobject_quest",
                    "game_event_model_equip",
                    "game_event_npc_vendor",
                    "game_event_npcflag",
                    "game_event_pool",
                    "game_event_prerequisite",
                    "game_event_quest_condition",
                    "game_event_seasonal_questrelation",
                    "game_graveyard",
                    "game_tele",
                    "game_weather",
                    "gameobject",
                    "gameobject_addon",
                    "gameobject_loot_template",
                    "gameobject_questender",
                    "gameobject_questitem",
                    "gameobject_queststarter",
                    "gameobject_template",
                    "gameobject_template_addon",
                    "gameobject_template_locale",
                    "gameobjectartkit_dbc",
                    "gameobjectdisplayinfo_dbc",
                    "gemproperties_dbc",
                    "glyphproperties_dbc",
                    "glyphslot_dbc",
                    "gossip_menu",
                    "gossip_menu_option",
                    "gossip_menu_option_locale",
                    "graveyard_zone",
                    "gtbarbershopcostbase_dbc",
                    "gtchancetomeleecrit_dbc",
                    "gtchancetomeleecritbase_dbc",
                    "gtchancetospellcrit_dbc",
                    "gtchancetospellcritbase_dbc",
                    "gtcombatratings_dbc",
                    "gtnpcmanacostscaler_dbc",
                    "gtoctclasscombatratingscalar_dbc",
                    "gtoctregenhp_dbc",
                    "gtregenhpperspt_dbc",
                    "gtregenmpperspt_dbc",
                    "holiday_dates",
                    "holidays_dbc",
                    "instance_encounters",
                    "instance_template",
                    "item_dbc",
                    "item_enchantment_template",
                    "item_loot_template",
                    "item_set_names",
                    "item_set_names_locale",
                    "item_template",
                    "item_template_locale",
                    "itembagfamily_dbc",
                    "itemdisplayinfo_dbc",
                    "itemextendedcost_dbc",
                    "itemlimitcategory_dbc",
                    "itemrandomproperties_dbc",
                    "itemrandomsuffix_dbc",
                    "itemset_dbc",
                    "lfg_dungeon_rewards",
                    "lfg_dungeon_template",
                    "lfgdungeons_dbc",
                    "light_dbc",
                    "linked_respawn",
                    "liquidtype_dbc",
                    "lock_dbc",
                    "mail_level_reward",
                    "mail_loot_template",
                    "mailtemplate_dbc",
                    "map_dbc",
                    "mapdifficulty_dbc",
                    "milling_loot_template",
                    "movie_dbc",
                    "namesprofanity_dbc",
                    "namesreserved_dbc",
                    "npc_spellclick_spells",
                    "npc_text",
                    "npc_text_locale",
                    "npc_trainer",
                    "npc_vendor",
                    "outdoorpvp_template",
                    "overridespelldata_dbc",
                    "page_text",
                    "page_text_locale",
                    "pet_levelstats",
                    "pet_name_generation",
                    "pet_name_generation_locale",
                    "pickpocketing_loot_template",
                    "player_class_stats",
                    "player_factionchange_achievement",
                    "player_factionchange_items",
                    "player_factionchange_quests",
                    "player_factionchange_reputations",
                    "player_factionchange_spells",
                    "player_factionchange_titles",
                    "player_loot_template",
                    "player_race_stats",
                    "player_xp_for_level",
                    "playercreateinfo",
                    "playercreateinfo_action",
                    "playercreateinfo_cast_spell",
                    "playercreateinfo_item",
                    "playercreateinfo_skills",
                    "playercreateinfo_spell_custom",
                    "points_of_interest",
                    "points_of_interest_locale",
                    "pool_creature",
                    "pool_gameobject",
                    "pool_pool",
                    "pool_quest",
                    "pool_template",
                    "powerdisplay_dbc",
                    "prospecting_loot_template",
                    "pvpdifficulty_dbc",
                    "quest_details",
                    "quest_greeting",
                    "quest_greeting_locale",
                    "quest_mail_sender",
                    "quest_money_reward",
                    "quest_offer_reward",
                    "quest_offer_reward_locale",
                    "quest_poi",
                    "quest_poi_points",
                    "quest_request_items",
                    "quest_request_items_locale",
                    "quest_template",
                    "quest_template_addon",
                    "quest_template_locale",
                    "questfactionreward_dbc",
                    "questsort_dbc",
                    "questxp_dbc",
                    "randproppoints_dbc",
                    "reference_loot_template",
                    "reputation_reward_rate",
                    "reputation_spillover_template",
                    "scalingstatdistribution_dbc",
                    "scalingstatvalues_dbc",
                    "script_waypoint",
                    "skill_discovery_template",
                    "skill_extra_item_template",
                    "skill_fishing_base_level",
                    "skill_perfect_item_template",
                    "skillline_dbc",
                    "skilllineability_dbc",
                    "skillraceclassinfo_dbc",
                    "skilltiers_dbc",
                    "skinning_loot_template",
                    "smart_scripts",
                    "soundentries_dbc",
                    "spell_area",
                    "spell_bonus_data",
                    "spell_cooldown_overrides",
                    "spell_custom_attr",
                    "spell_dbc",
                    "spell_enchant_proc_data",
                    "spell_group",
                    "spell_group_stack_rules",
                    "spell_linked_spell",
                    "spell_loot_template",
                    "spell_mixology",
                    "spell_pet_auras",
                    "spell_proc",
                    "spell_proc_event",
                    "spell_ranks",
                    "spell_required",
                    "spell_script_names",
                    "spell_scripts",
                    "spell_target_position",
                    "spell_threat",
                    "spellcasttimes_dbc",
                    "spellcategory_dbc",
                    "spelldifficulty_dbc",
                    "spellduration_dbc",
                    "spellfocusobject_dbc",
                    "spellitemenchantment_dbc",
                    "spellitemenchantmentcondition_dbc",
                    "spellradius_dbc",
                    "spellrange_dbc",
                    "spellrunecost_dbc",
                    "spellshapeshiftform_dbc",
                    "spellvisual_dbc",
                    "stableslotprices_dbc",
                    "summonproperties_dbc",
                    "talent_dbc",
                    "talenttab_dbc",
                    "taxinodes_dbc",
                    "taxipath_dbc",
                    "taxipathnode_dbc",
                    "teamcontributionpoints_dbc",
                    "totemcategory_dbc",
                    "transportanimation_dbc",
                    "transportrotation_dbc",
                    "transports",
                    "updates",
                    "updates_include",
                    "vehicle_accessory",
                    "vehicle_dbc",
                    "vehicle_template_accessory",
                    "vehicleseat_dbc",
                    "version",
                    "warden_checks",
                    "waypoint_data",
                    "waypoint_scripts",
                    "waypoints",
                    "wmoareatable_dbc",
                    "worldmaparea_dbc",
                    "worldmapoverlay_dbc"
                ]
        }, fd)
    sys.exit(0)

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-p", "--pack", help="Pack file", default="./pack.yaml")
    parser.add_argument("-n", "--new", help="Create a new Pack file: namespace/packname", required=False)
    parser.add_argument("-ne", "--new-extractor", help="Creates a new extractor.yaml file for you", required=False)
    args = parser.parse_args()

    if args.new_extractor:
        new_extractor(args)
        sys.exit(0)

    if args.new:
        new_pack(args)
        sys.exit(0)

    with open(args.pack, 'r') as fd:
        global pack
        pack = yaml.load(fd)

    exit_on_missing_key(pack, 'daisy')
    exit_on_missing_key(pack['daisy'], 'pack')

    root = pack['daisy']['pack']
    
    exit_on_missing_key(root, 'name')
    exit_on_missing_key(root, 'version')
    exit_on_missing_key(root, 'author')
    exit_on_missing_key(root, 'homepage')
    exit_on_missing_key(root, 'source')
    exit_on_missing_key(root, 'build')

    build = root['build']
    if os.path.exists(build):
        shutil.rmtree(build, ignore_errors=True)
        os.makedirs(build)
    else:
        os.makedirs(build)

    source = root['source']

    files = find_code(".yaml", source)

    # Do we have a "_constants.yaml" file in the pack? If so
    # get the path from the 
    pack_globals = [x for x in files if "_constants.yaml" in x]
    if len(pack_globals) == 0:
        pack_globals = None
    else:
        pack_globals = pack_globals[0]
    
    for code in files:
        if "_constants.yaml" in code:
            # This file is loaded another way
            # See below
            continue 

        parsed  = None
        if pack_globals:
            parsed = parse_yaml(code, pack_globals)
        else:
            parsed = parse_yaml(code)

        parsed['pack'] = root

        result, err = deletes(parsed)
        if not result:
            # print(f"Warning in deletes() for '{pack}': {err}")
            pass
        
        result, err = moves(parsed)
        if not result:
            # print(f"Warning in moves() for '{pack}': {err}")
            pass

        result, err = updates(parsed)
        if not result:
            # print(f"Warning in updates() for '{pack}': {err}")
            pass

        result, err = tables(parsed)
        if not result:
            # print(f"Warning in tables() for '{pack}': {err}")
            pass

    sql_files = find_code(".sql", source)
    for sql_code in sql_files:
        safe_name = make_safe_name(root['name'], root['version'])
        basename = os.path.basename(sql_code)
        dst = f"{build}/{safe_name}-{basename}"
        shutil.copyfile(sql_code, f"{dst}")

    lua_files = find_code(".lua", source)
    for lua_code in lua_files:
        safe_name = make_safe_name(root['name'], root['version'])
        basename = os.path.basename(lua_code)
        dst = f"{build}/lua_scripts/{safe_name}-{basename}"
        script_path = f"{build}/lua_scripts"
        if not os.path.exists(script_path): os.makedirs(script_path)
        shutil.copyfile(lua_code, f"{dst}")

    

if __name__ == "__main__":
    main()
