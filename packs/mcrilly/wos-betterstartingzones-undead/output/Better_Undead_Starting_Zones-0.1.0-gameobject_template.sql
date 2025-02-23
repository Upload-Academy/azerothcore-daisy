
-- START gameobject_template
SET
@entry := 501000,
@type := 9,
@displayid := 254,
@name := "Tome of Heroic Memories",
@iconname := "",
@castbarcaption := "",
@unk1 := "",
@size := 1,
@data0 := 4000,
@data1 := 0,
@data2 := 1,
@data3 := 0,
@data4 := 0,
@data5 := 0,
@data6 := 0,
@data7 := 0,
@data8 := 0,
@data9 := 0,
@data10 := 0,
@data11 := 0,
@data12 := 0,
@data13 := 0,
@data14 := 0,
@data15 := 0,
@data16 := 0,
@data17 := 0,
@data18 := 0,
@data19 := 0,
@data20 := 0,
@data21 := 0,
@data22 := 0,
@data23 := 0,
@ainame := "",
@scriptname := "",
@verifiedbuild := 12340;

DELETE FROM gameobject_template WHERE
    entry=@entry
;

INSERT INTO gameobject_template (
    `entry`,
    `type`,
    `displayid`,
    `name`,
    `iconname`,
    `castbarcaption`,
    `unk1`,
    `size`,
    `data0`,
    `data1`,
    `data2`,
    `data3`,
    `data4`,
    `data5`,
    `data6`,
    `data7`,
    `data8`,
    `data9`,
    `data10`,
    `data11`,
    `data12`,
    `data13`,
    `data14`,
    `data15`,
    `data16`,
    `data17`,
    `data18`,
    `data19`,
    `data20`,
    `data21`,
    `data22`,
    `data23`,
    `ainame`,
    `scriptname`,
    `verifiedbuild`
)
VALUES (
    @entry,
    @type,
    @displayid,
    @name,
    @iconname,
    @castbarcaption,
    @unk1,
    @size,
    @data0,
    @data1,
    @data2,
    @data3,
    @data4,
    @data5,
    @data6,
    @data7,
    @data8,
    @data9,
    @data10,
    @data11,
    @data12,
    @data13,
    @data14,
    @data15,
    @data16,
    @data17,
    @data18,
    @data19,
    @data20,
    @data21,
    @data22,
    @data23,
    @ainame,
    @scriptname,
    @verifiedbuild
);
-- EOF gameobject_template