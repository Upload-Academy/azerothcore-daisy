
-- START npc_text_locale
SET
@id := {id},
@locale := "{locale}",
@text0_0 := "{text0_0}",
@text0_1 := "{text0_1}",
@text1_0 := "{text1_0}",
@text1_1 := "{text1_1}",
@text2_0 := "{text2_0}",
@text2_1 := "{text2_1}",
@text3_0 := "{text3_0}",
@text3_1 := "{text3_1}",
@text4_0 := "{text4_0}",
@text4_1 := "{text4_1}",
@text5_0 := "{text5_0}",
@text5_1 := "{text5_1}",
@text6_0 := "{text6_0}",
@text6_1 := "{text6_1}",
@text7_0 := "{text7_0}",
@text7_1 := "{text7_1}";

DELETE FROM npc_text_locale WHERE
    id=@id AND
    locale=@locale
;

INSERT INTO npc_text_locale (
    `id`,
    `locale`,
    `text0_0`,
    `text0_1`,
    `text1_0`,
    `text1_1`,
    `text2_0`,
    `text2_1`,
    `text3_0`,
    `text3_1`,
    `text4_0`,
    `text4_1`,
    `text5_0`,
    `text5_1`,
    `text6_0`,
    `text6_1`,
    `text7_0`,
    `text7_1`
)
VALUES (
    @id,
    @locale,
    @text0_0,
    @text0_1,
    @text1_0,
    @text1_1,
    @text2_0,
    @text2_1,
    @text3_0,
    @text3_1,
    @text4_0,
    @text4_1,
    @text5_0,
    @text5_1,
    @text6_0,
    @text6_1,
    @text7_0,
    @text7_1
);
-- EOF npc_text_locale