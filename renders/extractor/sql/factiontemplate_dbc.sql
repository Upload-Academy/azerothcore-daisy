-- BEGIN: factiontemplate_dbc
SET
@id := {id},
@faction := {faction},
@flags := {flags},
@factiongroup := {factiongroup},
@friendgroup := {friendgroup},
@enemygroup := {enemygroup},
@enemies_1 := {enemies_1},
@enemies_2 := {enemies_2},
@enemies_3 := {enemies_3},
@enemies_4 := {enemies_4},
@friend_1 := {friend_1},
@friend_2 := {friend_2},
@friend_3 := {friend_3},
@friend_4 := {friend_4};

DELETE FROM factiontemplate_dbc WHERE
    id=@id
;

INSERT INTO factiontemplate_dbc (
    id,
    faction,
    flags,
    factiongroup,
    friendgroup,
    enemygroup,
    enemies_1,
    enemies_2,
    enemies_3,
    enemies_4,
    friend_1,
    friend_2,
    friend_3,
    friend_4
)
VALUES (
    @id,
    @faction,
    @flags,
    @factiongroup,
    @friendgroup,
    @enemygroup,
    @enemies_1,
    @enemies_2,
    @enemies_3,
    @enemies_4,
    @friend_1,
    @friend_2,
    @friend_3,
    @friend_4
);

-- END: factiontemplate_dbc