
TBL_CREATURE_QUEST_STARTER = "creature_queststarter"
TBL_CREATURE_QUEST_ENDER = "creature_questender"

def delete_creature_quest_starter_or_ender(
        dbx,
        creature_id,
        quest_id,
        table="creature_queststarter"
):
    """
    This is a very rough, raw call to the database.
    It allows for simple DELETE operations against the
    table based on a single key and its value.

    :param dbx: database connection
    :param creature_id: the column name to filter on
    :param quest_id: the column value to filter on
    :param table: the default to target; can be starter or ender table
    :return: error, result
    """
    if not dbx:
        return True, "no dbx object configured"

    if table not in ["creature_queststarter", "creature_questender"]:
        return True, "bad table name given: creature_queststarter or creature_questender allowed"

    cursor = dbx.cursor()
    cursor.execute(f"DELETE FROM {table} WHERE id=%s AND quest=%s", (creature_id,quest_id))
    dbx.commit()

    return False, None

def sql_new_creature(data, path):
    with open(path, 'r') as fd:
        return fd.read().format(
            guid = data['guid'],
            id1 = data['id1'],
            id2 = data['id2'],
            id3 = data['id3'],
            map = data['map'],
            zoneid = data['zoneid'],
            areaid = data['areaid'],
            spawnmask = data['spawnmask'],
            phasemask = data['phasemask'],
            equipment_id = data['equipment_id'],
            position_x = data['position_x'],
            position_y = data['position_y'],
            position_z = data['position_z'],
            orientation = data['orientation'],
            spawntimesecs = data['spawntimesecs'],
            wander_distance = data['wander_distance'],
            currentwaypoint = data['currentwaypoint'],
            curhealth = data['curhealth'],
            curmana = data['curmana'],
            movementtype = data['movementtype'],
            npcflag = data['npcflag'],
            unit_flags = data['unit_flags'],
            dynamicflags = data['dynamicflags'],
            scriptname = data['scriptname'],
            verifiedbuild = data['verifiedbuild'],
            createobject = data['createobject'],
            comment = data['comment'],
        )