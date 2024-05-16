
local SHELLENE_CREATURE_ID = 14497
local EVENT_CREATURE_EVENT_ON_QUEST_REWARD = 34

local raretoys = {
    34493, -- Dragon Kite
}

local toys = {
    34493, -- Zergling
    32617, -- Sleepy Willy
    32617, -- Sleepy Willy
    33816, -- Toothy's Bucket
    40653, -- Reeking Pet Carrier
}

local junk = {
    3167, -- Thick Spider Hair
    3010, -- Fine Sand
    755, -- Melted Candle
    813, -- Broken Cog
    1175, -- A Gold Tooth
    3769, -- Broken Wand
    4874, -- Clean Fishbones
    5115, -- Broken Wishbone
    5263, -- Pocket Lint
    5329, -- Cat Figurine
    5368, -- Empty Wallet
    5370, -- Bent Spoon
}

local function OnCompletedQuest(event, player, creature, quest, opt)
    -- get random number between 0 and 100
    math.randomseed(os.time())
    local dice = math.random(0, 100)
    
    if(dice <= 1) then
        player:AddItem(raretoys[0], 1)
        return
    end
    
    if (dice > 1 and dice <= 5) then
        player:AddItem(toys[math.random(#toys)], 1)
        return
    end

    local count = math.random(1, 3)
    for i=1,count do player:AddItem(junk[math.random(#junk)], 1) end
end

RegisterCreatureEvent(SHELLENE_CREATURE_ID, EVENT_CREATURE_EVENT_ON_QUEST_REWARD, OnCompletedQuest)
