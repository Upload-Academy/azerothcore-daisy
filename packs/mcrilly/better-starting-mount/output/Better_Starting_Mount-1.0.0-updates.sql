
-- START OF UPDATE
UPDATE item_template
SET
    `requiredlevel` = 5
WHERE
    `entry` IN (2411,5864,8629,13322,28481,5665,13331,15277,8588,29221);
-- END OF UPDATE
-- START OF UPDATE
UPDATE npc_trainer
SET
    `moneycost` = 100,
    `reqlevel` = 5
WHERE
    `SpellID` IN (33388);
-- END OF UPDATE