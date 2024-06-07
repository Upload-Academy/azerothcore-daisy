
-- START quest_template
SET
@id := 5150001,
@questtype := 2,
@questlevel := -1,
@minlevel := 3,
@questsortid := 1519,
@questinfoid := 0,
@suggestedgroupnum := 0,
@requiredfactionid1 := 0,
@requiredfactionid2 := 0,
@requiredfactionvalue1 := 0,
@requiredfactionvalue2 := 0,
@rewardnextquest := 0,
@rewardxpdifficulty := 0,
@rewardmoney := 500,
@rewardmoneydifficulty := 0,
@rewarddisplayspell := 0,
@rewardspell := 0,
@rewardhonor := 0,
@rewardkillhonor := 0,
@startitem := 0,
@flags := 0,
@requiredplayerkills := 0,
@rewarditem1 := 0,
@rewardamount1 := 0,
@rewarditem2 := 0,
@rewardamount2 := 0,
@rewarditem3 := 0,
@rewardamount3 := 0,
@rewarditem4 := 0,
@rewardamount4 := 0,
@itemdrop1 := 0,
@itemdropquantity1 := 0,
@itemdrop2 := 0,
@itemdropquantity2 := 0,
@itemdrop3 := 0,
@itemdropquantity3 := 0,
@itemdrop4 := 0,
@itemdropquantity4 := 0,
@rewardchoiceitemid1 := 0,
@rewardchoiceitemquantity1 := 0,
@rewardchoiceitemid2 := 0,
@rewardchoiceitemquantity2 := 0,
@rewardchoiceitemid3 := 0,
@rewardchoiceitemquantity3 := 0,
@rewardchoiceitemid4 := 0,
@rewardchoiceitemquantity4 := 0,
@rewardchoiceitemid5 := 0,
@rewardchoiceitemquantity5 := 0,
@rewardchoiceitemid6 := 0,
@rewardchoiceitemquantity6 := 0,
@poicontinent := 0,
@poix := 0,
@poiy := 0,
@poipriority := 0,
@rewardtitle := 0,
@rewardtalents := 0,
@rewardarenapoints := 0,
@rewardfactionid1 := 72,
@rewardfactionvalue1 := 0,
@rewardfactionoverride1 := 0,
@rewardfactionid2 := 0,
@rewardfactionvalue2 := 0,
@rewardfactionoverride2 := 0,
@rewardfactionid3 := 0,
@rewardfactionvalue3 := 0,
@rewardfactionoverride3 := 0,
@rewardfactionid4 := 0,
@rewardfactionvalue4 := 0,
@rewardfactionoverride4 := 0,
@rewardfactionid5 := 0,
@rewardfactionvalue5 := 0,
@rewardfactionoverride5 := 0,
@timeallowed := 0,
@allowableraces := 0,
@logtitle := "Leather me up!",
@logdescription := "Bring us all the Light Leather you can create and we'll pay you very well for it.",
@questdescription := "Let me tell you $N, we're always looking for Light Leather and we're willing to pay well for it.",
@areadescription := "",
@questcompletionlog := "Hand in Light Leather",
@requirednpcorgo1 := 0,
@requirednpcorgo2 := 0,
@requirednpcorgo3 := 0,
@requirednpcorgo4 := 0,
@requirednpcorgocount1 := 0,
@requirednpcorgocount2 := 0,
@requirednpcorgocount3 := 0,
@requirednpcorgocount4 := 0,
@requireditemid1 := 2318,
@requireditemid2 := 0,
@requireditemid3 := 0,
@requireditemid4 := 0,
@requireditemid5 := 0,
@requireditemid6 := 0,
@requireditemcount1 := 20,
@requireditemcount2 := 0,
@requireditemcount3 := 0,
@requireditemcount4 := 0,
@requireditemcount5 := 0,
@requireditemcount6 := 0,
@unknown0 := 0,
@objectivetext1 := "Supply 20x Light Leather",
@objectivetext2 := "",
@objectivetext3 := "",
@objectivetext4 := "",
@verifiedbuild := 0;

DELETE FROM quest_template WHERE
    id=@id
;

INSERT INTO quest_template (
    `id`,
    `questtype`,
    `questlevel`,
    `minlevel`,
    `questsortid`,
    `questinfoid`,
    `suggestedgroupnum`,
    `requiredfactionid1`,
    `requiredfactionid2`,
    `requiredfactionvalue1`,
    `requiredfactionvalue2`,
    `rewardnextquest`,
    `rewardxpdifficulty`,
    `rewardmoney`,
    `rewardmoneydifficulty`,
    `rewarddisplayspell`,
    `rewardspell`,
    `rewardhonor`,
    `rewardkillhonor`,
    `startitem`,
    `flags`,
    `requiredplayerkills`,
    `rewarditem1`,
    `rewardamount1`,
    `rewarditem2`,
    `rewardamount2`,
    `rewarditem3`,
    `rewardamount3`,
    `rewarditem4`,
    `rewardamount4`,
    `itemdrop1`,
    `itemdropquantity1`,
    `itemdrop2`,
    `itemdropquantity2`,
    `itemdrop3`,
    `itemdropquantity3`,
    `itemdrop4`,
    `itemdropquantity4`,
    `rewardchoiceitemid1`,
    `rewardchoiceitemquantity1`,
    `rewardchoiceitemid2`,
    `rewardchoiceitemquantity2`,
    `rewardchoiceitemid3`,
    `rewardchoiceitemquantity3`,
    `rewardchoiceitemid4`,
    `rewardchoiceitemquantity4`,
    `rewardchoiceitemid5`,
    `rewardchoiceitemquantity5`,
    `rewardchoiceitemid6`,
    `rewardchoiceitemquantity6`,
    `poicontinent`,
    `poix`,
    `poiy`,
    `poipriority`,
    `rewardtitle`,
    `rewardtalents`,
    `rewardarenapoints`,
    `rewardfactionid1`,
    `rewardfactionvalue1`,
    `rewardfactionoverride1`,
    `rewardfactionid2`,
    `rewardfactionvalue2`,
    `rewardfactionoverride2`,
    `rewardfactionid3`,
    `rewardfactionvalue3`,
    `rewardfactionoverride3`,
    `rewardfactionid4`,
    `rewardfactionvalue4`,
    `rewardfactionoverride4`,
    `rewardfactionid5`,
    `rewardfactionvalue5`,
    `rewardfactionoverride5`,
    `timeallowed`,
    `allowableraces`,
    `logtitle`,
    `logdescription`,
    `questdescription`,
    `areadescription`,
    `questcompletionlog`,
    `requirednpcorgo1`,
    `requirednpcorgo2`,
    `requirednpcorgo3`,
    `requirednpcorgo4`,
    `requirednpcorgocount1`,
    `requirednpcorgocount2`,
    `requirednpcorgocount3`,
    `requirednpcorgocount4`,
    `requireditemid1`,
    `requireditemid2`,
    `requireditemid3`,
    `requireditemid4`,
    `requireditemid5`,
    `requireditemid6`,
    `requireditemcount1`,
    `requireditemcount2`,
    `requireditemcount3`,
    `requireditemcount4`,
    `requireditemcount5`,
    `requireditemcount6`,
    `unknown0`,
    `objectivetext1`,
    `objectivetext2`,
    `objectivetext3`,
    `objectivetext4`,
    `verifiedbuild`
)
VALUES (
    @id,
    @questtype,
    @questlevel,
    @minlevel,
    @questsortid,
    @questinfoid,
    @suggestedgroupnum,
    @requiredfactionid1,
    @requiredfactionid2,
    @requiredfactionvalue1,
    @requiredfactionvalue2,
    @rewardnextquest,
    @rewardxpdifficulty,
    @rewardmoney,
    @rewardmoneydifficulty,
    @rewarddisplayspell,
    @rewardspell,
    @rewardhonor,
    @rewardkillhonor,
    @startitem,
    @flags,
    @requiredplayerkills,
    @rewarditem1,
    @rewardamount1,
    @rewarditem2,
    @rewardamount2,
    @rewarditem3,
    @rewardamount3,
    @rewarditem4,
    @rewardamount4,
    @itemdrop1,
    @itemdropquantity1,
    @itemdrop2,
    @itemdropquantity2,
    @itemdrop3,
    @itemdropquantity3,
    @itemdrop4,
    @itemdropquantity4,
    @rewardchoiceitemid1,
    @rewardchoiceitemquantity1,
    @rewardchoiceitemid2,
    @rewardchoiceitemquantity2,
    @rewardchoiceitemid3,
    @rewardchoiceitemquantity3,
    @rewardchoiceitemid4,
    @rewardchoiceitemquantity4,
    @rewardchoiceitemid5,
    @rewardchoiceitemquantity5,
    @rewardchoiceitemid6,
    @rewardchoiceitemquantity6,
    @poicontinent,
    @poix,
    @poiy,
    @poipriority,
    @rewardtitle,
    @rewardtalents,
    @rewardarenapoints,
    @rewardfactionid1,
    @rewardfactionvalue1,
    @rewardfactionoverride1,
    @rewardfactionid2,
    @rewardfactionvalue2,
    @rewardfactionoverride2,
    @rewardfactionid3,
    @rewardfactionvalue3,
    @rewardfactionoverride3,
    @rewardfactionid4,
    @rewardfactionvalue4,
    @rewardfactionoverride4,
    @rewardfactionid5,
    @rewardfactionvalue5,
    @rewardfactionoverride5,
    @timeallowed,
    @allowableraces,
    @logtitle,
    @logdescription,
    @questdescription,
    @areadescription,
    @questcompletionlog,
    @requirednpcorgo1,
    @requirednpcorgo2,
    @requirednpcorgo3,
    @requirednpcorgo4,
    @requirednpcorgocount1,
    @requirednpcorgocount2,
    @requirednpcorgocount3,
    @requirednpcorgocount4,
    @requireditemid1,
    @requireditemid2,
    @requireditemid3,
    @requireditemid4,
    @requireditemid5,
    @requireditemid6,
    @requireditemcount1,
    @requireditemcount2,
    @requireditemcount3,
    @requireditemcount4,
    @requireditemcount5,
    @requireditemcount6,
    @unknown0,
    @objectivetext1,
    @objectivetext2,
    @objectivetext3,
    @objectivetext4,
    @verifiedbuild
);
-- EOF quest_template
-- START quest_template
SET
@id := 5150002,
@questtype := 2,
@questlevel := -1,
@minlevel := 3,
@questsortid := 1519,
@questinfoid := 0,
@suggestedgroupnum := 0,
@requiredfactionid1 := 0,
@requiredfactionid2 := 0,
@requiredfactionvalue1 := 0,
@requiredfactionvalue2 := 0,
@rewardnextquest := 0,
@rewardxpdifficulty := 0,
@rewardmoney := 500,
@rewardmoneydifficulty := 0,
@rewarddisplayspell := 0,
@rewardspell := 0,
@rewardhonor := 0,
@rewardkillhonor := 0,
@startitem := 0,
@flags := 0,
@requiredplayerkills := 0,
@rewarditem1 := 0,
@rewardamount1 := 0,
@rewarditem2 := 0,
@rewardamount2 := 0,
@rewarditem3 := 0,
@rewardamount3 := 0,
@rewarditem4 := 0,
@rewardamount4 := 0,
@itemdrop1 := 0,
@itemdropquantity1 := 0,
@itemdrop2 := 0,
@itemdropquantity2 := 0,
@itemdrop3 := 0,
@itemdropquantity3 := 0,
@itemdrop4 := 0,
@itemdropquantity4 := 0,
@rewardchoiceitemid1 := 0,
@rewardchoiceitemquantity1 := 0,
@rewardchoiceitemid2 := 0,
@rewardchoiceitemquantity2 := 0,
@rewardchoiceitemid3 := 0,
@rewardchoiceitemquantity3 := 0,
@rewardchoiceitemid4 := 0,
@rewardchoiceitemquantity4 := 0,
@rewardchoiceitemid5 := 0,
@rewardchoiceitemquantity5 := 0,
@rewardchoiceitemid6 := 0,
@rewardchoiceitemquantity6 := 0,
@poicontinent := 0,
@poix := 0,
@poiy := 0,
@poipriority := 0,
@rewardtitle := 0,
@rewardtalents := 0,
@rewardarenapoints := 0,
@rewardfactionid1 := 72,
@rewardfactionvalue1 := 0,
@rewardfactionoverride1 := 0,
@rewardfactionid2 := 0,
@rewardfactionvalue2 := 0,
@rewardfactionoverride2 := 0,
@rewardfactionid3 := 0,
@rewardfactionvalue3 := 0,
@rewardfactionoverride3 := 0,
@rewardfactionid4 := 0,
@rewardfactionvalue4 := 0,
@rewardfactionoverride4 := 0,
@rewardfactionid5 := 0,
@rewardfactionvalue5 := 0,
@rewardfactionoverride5 := 0,
@timeallowed := 0,
@allowableraces := 0,
@logtitle := "Leather Kits are in!",
@logdescription := "Supply us with the Light Amor Kits that we need and we will pay you well.",
@questdescription := "Light Amor Kits are actually vital for our troops. Not many people realise this, $N. If you can supply 20 of them, we can pay you well.",
@areadescription := "",
@questcompletionlog := "Hand in Light Amor Kits",
@requirednpcorgo1 := 0,
@requirednpcorgo2 := 0,
@requirednpcorgo3 := 0,
@requirednpcorgo4 := 0,
@requirednpcorgocount1 := 0,
@requirednpcorgocount2 := 0,
@requirednpcorgocount3 := 0,
@requirednpcorgocount4 := 0,
@requireditemid1 := 2304,
@requireditemid2 := 0,
@requireditemid3 := 0,
@requireditemid4 := 0,
@requireditemid5 := 0,
@requireditemid6 := 0,
@requireditemcount1 := 20,
@requireditemcount2 := 0,
@requireditemcount3 := 0,
@requireditemcount4 := 0,
@requireditemcount5 := 0,
@requireditemcount6 := 0,
@unknown0 := 0,
@objectivetext1 := "Supply 20x Light Armor Kits",
@objectivetext2 := "",
@objectivetext3 := "",
@objectivetext4 := "",
@verifiedbuild := 0;

DELETE FROM quest_template WHERE
    id=@id
;

INSERT INTO quest_template (
    `id`,
    `questtype`,
    `questlevel`,
    `minlevel`,
    `questsortid`,
    `questinfoid`,
    `suggestedgroupnum`,
    `requiredfactionid1`,
    `requiredfactionid2`,
    `requiredfactionvalue1`,
    `requiredfactionvalue2`,
    `rewardnextquest`,
    `rewardxpdifficulty`,
    `rewardmoney`,
    `rewardmoneydifficulty`,
    `rewarddisplayspell`,
    `rewardspell`,
    `rewardhonor`,
    `rewardkillhonor`,
    `startitem`,
    `flags`,
    `requiredplayerkills`,
    `rewarditem1`,
    `rewardamount1`,
    `rewarditem2`,
    `rewardamount2`,
    `rewarditem3`,
    `rewardamount3`,
    `rewarditem4`,
    `rewardamount4`,
    `itemdrop1`,
    `itemdropquantity1`,
    `itemdrop2`,
    `itemdropquantity2`,
    `itemdrop3`,
    `itemdropquantity3`,
    `itemdrop4`,
    `itemdropquantity4`,
    `rewardchoiceitemid1`,
    `rewardchoiceitemquantity1`,
    `rewardchoiceitemid2`,
    `rewardchoiceitemquantity2`,
    `rewardchoiceitemid3`,
    `rewardchoiceitemquantity3`,
    `rewardchoiceitemid4`,
    `rewardchoiceitemquantity4`,
    `rewardchoiceitemid5`,
    `rewardchoiceitemquantity5`,
    `rewardchoiceitemid6`,
    `rewardchoiceitemquantity6`,
    `poicontinent`,
    `poix`,
    `poiy`,
    `poipriority`,
    `rewardtitle`,
    `rewardtalents`,
    `rewardarenapoints`,
    `rewardfactionid1`,
    `rewardfactionvalue1`,
    `rewardfactionoverride1`,
    `rewardfactionid2`,
    `rewardfactionvalue2`,
    `rewardfactionoverride2`,
    `rewardfactionid3`,
    `rewardfactionvalue3`,
    `rewardfactionoverride3`,
    `rewardfactionid4`,
    `rewardfactionvalue4`,
    `rewardfactionoverride4`,
    `rewardfactionid5`,
    `rewardfactionvalue5`,
    `rewardfactionoverride5`,
    `timeallowed`,
    `allowableraces`,
    `logtitle`,
    `logdescription`,
    `questdescription`,
    `areadescription`,
    `questcompletionlog`,
    `requirednpcorgo1`,
    `requirednpcorgo2`,
    `requirednpcorgo3`,
    `requirednpcorgo4`,
    `requirednpcorgocount1`,
    `requirednpcorgocount2`,
    `requirednpcorgocount3`,
    `requirednpcorgocount4`,
    `requireditemid1`,
    `requireditemid2`,
    `requireditemid3`,
    `requireditemid4`,
    `requireditemid5`,
    `requireditemid6`,
    `requireditemcount1`,
    `requireditemcount2`,
    `requireditemcount3`,
    `requireditemcount4`,
    `requireditemcount5`,
    `requireditemcount6`,
    `unknown0`,
    `objectivetext1`,
    `objectivetext2`,
    `objectivetext3`,
    `objectivetext4`,
    `verifiedbuild`
)
VALUES (
    @id,
    @questtype,
    @questlevel,
    @minlevel,
    @questsortid,
    @questinfoid,
    @suggestedgroupnum,
    @requiredfactionid1,
    @requiredfactionid2,
    @requiredfactionvalue1,
    @requiredfactionvalue2,
    @rewardnextquest,
    @rewardxpdifficulty,
    @rewardmoney,
    @rewardmoneydifficulty,
    @rewarddisplayspell,
    @rewardspell,
    @rewardhonor,
    @rewardkillhonor,
    @startitem,
    @flags,
    @requiredplayerkills,
    @rewarditem1,
    @rewardamount1,
    @rewarditem2,
    @rewardamount2,
    @rewarditem3,
    @rewardamount3,
    @rewarditem4,
    @rewardamount4,
    @itemdrop1,
    @itemdropquantity1,
    @itemdrop2,
    @itemdropquantity2,
    @itemdrop3,
    @itemdropquantity3,
    @itemdrop4,
    @itemdropquantity4,
    @rewardchoiceitemid1,
    @rewardchoiceitemquantity1,
    @rewardchoiceitemid2,
    @rewardchoiceitemquantity2,
    @rewardchoiceitemid3,
    @rewardchoiceitemquantity3,
    @rewardchoiceitemid4,
    @rewardchoiceitemquantity4,
    @rewardchoiceitemid5,
    @rewardchoiceitemquantity5,
    @rewardchoiceitemid6,
    @rewardchoiceitemquantity6,
    @poicontinent,
    @poix,
    @poiy,
    @poipriority,
    @rewardtitle,
    @rewardtalents,
    @rewardarenapoints,
    @rewardfactionid1,
    @rewardfactionvalue1,
    @rewardfactionoverride1,
    @rewardfactionid2,
    @rewardfactionvalue2,
    @rewardfactionoverride2,
    @rewardfactionid3,
    @rewardfactionvalue3,
    @rewardfactionoverride3,
    @rewardfactionid4,
    @rewardfactionvalue4,
    @rewardfactionoverride4,
    @rewardfactionid5,
    @rewardfactionvalue5,
    @rewardfactionoverride5,
    @timeallowed,
    @allowableraces,
    @logtitle,
    @logdescription,
    @questdescription,
    @areadescription,
    @questcompletionlog,
    @requirednpcorgo1,
    @requirednpcorgo2,
    @requirednpcorgo3,
    @requirednpcorgo4,
    @requirednpcorgocount1,
    @requirednpcorgocount2,
    @requirednpcorgocount3,
    @requirednpcorgocount4,
    @requireditemid1,
    @requireditemid2,
    @requireditemid3,
    @requireditemid4,
    @requireditemid5,
    @requireditemid6,
    @requireditemcount1,
    @requireditemcount2,
    @requireditemcount3,
    @requireditemcount4,
    @requireditemcount5,
    @requireditemcount6,
    @unknown0,
    @objectivetext1,
    @objectivetext2,
    @objectivetext3,
    @objectivetext4,
    @verifiedbuild
);
-- EOF quest_template
-- START quest_template
SET
@id := 5150003,
@questtype := 2,
@questlevel := -1,
@minlevel := 3,
@questsortid := 1519,
@questinfoid := 0,
@suggestedgroupnum := 0,
@requiredfactionid1 := 0,
@requiredfactionid2 := 0,
@requiredfactionvalue1 := 0,
@requiredfactionvalue2 := 0,
@rewardnextquest := 0,
@rewardxpdifficulty := 0,
@rewardmoney := 500,
@rewardmoneydifficulty := 0,
@rewarddisplayspell := 0,
@rewardspell := 0,
@rewardhonor := 0,
@rewardkillhonor := 0,
@startitem := 0,
@flags := 0,
@requiredplayerkills := 0,
@rewarditem1 := 0,
@rewardamount1 := 0,
@rewarditem2 := 0,
@rewardamount2 := 0,
@rewarditem3 := 0,
@rewardamount3 := 0,
@rewarditem4 := 0,
@rewardamount4 := 0,
@itemdrop1 := 0,
@itemdropquantity1 := 0,
@itemdrop2 := 0,
@itemdropquantity2 := 0,
@itemdrop3 := 0,
@itemdropquantity3 := 0,
@itemdrop4 := 0,
@itemdropquantity4 := 0,
@rewardchoiceitemid1 := 0,
@rewardchoiceitemquantity1 := 0,
@rewardchoiceitemid2 := 0,
@rewardchoiceitemquantity2 := 0,
@rewardchoiceitemid3 := 0,
@rewardchoiceitemquantity3 := 0,
@rewardchoiceitemid4 := 0,
@rewardchoiceitemquantity4 := 0,
@rewardchoiceitemid5 := 0,
@rewardchoiceitemquantity5 := 0,
@rewardchoiceitemid6 := 0,
@rewardchoiceitemquantity6 := 0,
@poicontinent := 0,
@poix := 0,
@poiy := 0,
@poipriority := 0,
@rewardtitle := 0,
@rewardtalents := 0,
@rewardarenapoints := 0,
@rewardfactionid1 := 72,
@rewardfactionvalue1 := 0,
@rewardfactionoverride1 := 0,
@rewardfactionid2 := 0,
@rewardfactionvalue2 := 0,
@rewardfactionoverride2 := 0,
@rewardfactionid3 := 0,
@rewardfactionvalue3 := 0,
@rewardfactionoverride3 := 0,
@rewardfactionid4 := 0,
@rewardfactionvalue4 := 0,
@rewardfactionoverride4 := 0,
@rewardfactionid5 := 0,
@rewardfactionvalue5 := 0,
@rewardfactionoverride5 := 0,
@timeallowed := 0,
@allowableraces := 0,
@logtitle := "REALLY leather me up!",
@logdescription := "Supply us with all the Medium Armor Kits you can make and we'll pay you well.",
@questdescription := "The Medium Armor Kits are serious pieces of, um, kit. We need a constant supply of 20 of them. We pay very well.",
@areadescription := "",
@questcompletionlog := "Hand in Medium Armor Kits",
@requirednpcorgo1 := 0,
@requirednpcorgo2 := 0,
@requirednpcorgo3 := 0,
@requirednpcorgo4 := 0,
@requirednpcorgocount1 := 0,
@requirednpcorgocount2 := 0,
@requirednpcorgocount3 := 0,
@requirednpcorgocount4 := 0,
@requireditemid1 := 2313,
@requireditemid2 := 0,
@requireditemid3 := 0,
@requireditemid4 := 0,
@requireditemid5 := 0,
@requireditemid6 := 0,
@requireditemcount1 := 20,
@requireditemcount2 := 0,
@requireditemcount3 := 0,
@requireditemcount4 := 0,
@requireditemcount5 := 0,
@requireditemcount6 := 0,
@unknown0 := 0,
@objectivetext1 := "Supply 20x Medium Armor Kits",
@objectivetext2 := "",
@objectivetext3 := "",
@objectivetext4 := "",
@verifiedbuild := 0;

DELETE FROM quest_template WHERE
    id=@id
;

INSERT INTO quest_template (
    `id`,
    `questtype`,
    `questlevel`,
    `minlevel`,
    `questsortid`,
    `questinfoid`,
    `suggestedgroupnum`,
    `requiredfactionid1`,
    `requiredfactionid2`,
    `requiredfactionvalue1`,
    `requiredfactionvalue2`,
    `rewardnextquest`,
    `rewardxpdifficulty`,
    `rewardmoney`,
    `rewardmoneydifficulty`,
    `rewarddisplayspell`,
    `rewardspell`,
    `rewardhonor`,
    `rewardkillhonor`,
    `startitem`,
    `flags`,
    `requiredplayerkills`,
    `rewarditem1`,
    `rewardamount1`,
    `rewarditem2`,
    `rewardamount2`,
    `rewarditem3`,
    `rewardamount3`,
    `rewarditem4`,
    `rewardamount4`,
    `itemdrop1`,
    `itemdropquantity1`,
    `itemdrop2`,
    `itemdropquantity2`,
    `itemdrop3`,
    `itemdropquantity3`,
    `itemdrop4`,
    `itemdropquantity4`,
    `rewardchoiceitemid1`,
    `rewardchoiceitemquantity1`,
    `rewardchoiceitemid2`,
    `rewardchoiceitemquantity2`,
    `rewardchoiceitemid3`,
    `rewardchoiceitemquantity3`,
    `rewardchoiceitemid4`,
    `rewardchoiceitemquantity4`,
    `rewardchoiceitemid5`,
    `rewardchoiceitemquantity5`,
    `rewardchoiceitemid6`,
    `rewardchoiceitemquantity6`,
    `poicontinent`,
    `poix`,
    `poiy`,
    `poipriority`,
    `rewardtitle`,
    `rewardtalents`,
    `rewardarenapoints`,
    `rewardfactionid1`,
    `rewardfactionvalue1`,
    `rewardfactionoverride1`,
    `rewardfactionid2`,
    `rewardfactionvalue2`,
    `rewardfactionoverride2`,
    `rewardfactionid3`,
    `rewardfactionvalue3`,
    `rewardfactionoverride3`,
    `rewardfactionid4`,
    `rewardfactionvalue4`,
    `rewardfactionoverride4`,
    `rewardfactionid5`,
    `rewardfactionvalue5`,
    `rewardfactionoverride5`,
    `timeallowed`,
    `allowableraces`,
    `logtitle`,
    `logdescription`,
    `questdescription`,
    `areadescription`,
    `questcompletionlog`,
    `requirednpcorgo1`,
    `requirednpcorgo2`,
    `requirednpcorgo3`,
    `requirednpcorgo4`,
    `requirednpcorgocount1`,
    `requirednpcorgocount2`,
    `requirednpcorgocount3`,
    `requirednpcorgocount4`,
    `requireditemid1`,
    `requireditemid2`,
    `requireditemid3`,
    `requireditemid4`,
    `requireditemid5`,
    `requireditemid6`,
    `requireditemcount1`,
    `requireditemcount2`,
    `requireditemcount3`,
    `requireditemcount4`,
    `requireditemcount5`,
    `requireditemcount6`,
    `unknown0`,
    `objectivetext1`,
    `objectivetext2`,
    `objectivetext3`,
    `objectivetext4`,
    `verifiedbuild`
)
VALUES (
    @id,
    @questtype,
    @questlevel,
    @minlevel,
    @questsortid,
    @questinfoid,
    @suggestedgroupnum,
    @requiredfactionid1,
    @requiredfactionid2,
    @requiredfactionvalue1,
    @requiredfactionvalue2,
    @rewardnextquest,
    @rewardxpdifficulty,
    @rewardmoney,
    @rewardmoneydifficulty,
    @rewarddisplayspell,
    @rewardspell,
    @rewardhonor,
    @rewardkillhonor,
    @startitem,
    @flags,
    @requiredplayerkills,
    @rewarditem1,
    @rewardamount1,
    @rewarditem2,
    @rewardamount2,
    @rewarditem3,
    @rewardamount3,
    @rewarditem4,
    @rewardamount4,
    @itemdrop1,
    @itemdropquantity1,
    @itemdrop2,
    @itemdropquantity2,
    @itemdrop3,
    @itemdropquantity3,
    @itemdrop4,
    @itemdropquantity4,
    @rewardchoiceitemid1,
    @rewardchoiceitemquantity1,
    @rewardchoiceitemid2,
    @rewardchoiceitemquantity2,
    @rewardchoiceitemid3,
    @rewardchoiceitemquantity3,
    @rewardchoiceitemid4,
    @rewardchoiceitemquantity4,
    @rewardchoiceitemid5,
    @rewardchoiceitemquantity5,
    @rewardchoiceitemid6,
    @rewardchoiceitemquantity6,
    @poicontinent,
    @poix,
    @poiy,
    @poipriority,
    @rewardtitle,
    @rewardtalents,
    @rewardarenapoints,
    @rewardfactionid1,
    @rewardfactionvalue1,
    @rewardfactionoverride1,
    @rewardfactionid2,
    @rewardfactionvalue2,
    @rewardfactionoverride2,
    @rewardfactionid3,
    @rewardfactionvalue3,
    @rewardfactionoverride3,
    @rewardfactionid4,
    @rewardfactionvalue4,
    @rewardfactionoverride4,
    @rewardfactionid5,
    @rewardfactionvalue5,
    @rewardfactionoverride5,
    @timeallowed,
    @allowableraces,
    @logtitle,
    @logdescription,
    @questdescription,
    @areadescription,
    @questcompletionlog,
    @requirednpcorgo1,
    @requirednpcorgo2,
    @requirednpcorgo3,
    @requirednpcorgo4,
    @requirednpcorgocount1,
    @requirednpcorgocount2,
    @requirednpcorgocount3,
    @requirednpcorgocount4,
    @requireditemid1,
    @requireditemid2,
    @requireditemid3,
    @requireditemid4,
    @requireditemid5,
    @requireditemid6,
    @requireditemcount1,
    @requireditemcount2,
    @requireditemcount3,
    @requireditemcount4,
    @requireditemcount5,
    @requireditemcount6,
    @unknown0,
    @objectivetext1,
    @objectivetext2,
    @objectivetext3,
    @objectivetext4,
    @verifiedbuild
);
-- EOF quest_template