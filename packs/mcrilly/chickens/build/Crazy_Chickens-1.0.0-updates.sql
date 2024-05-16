
-- START OF UPDATE
UPDATE creature_template
SET
    `npcflag` = 2
WHERE
    `entry` IN (250);
-- END OF UPDATE