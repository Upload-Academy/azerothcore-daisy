
-- When the GameObject is used
local ON_PLAYER_USE = 2

local function OnUse(event, go, player)
    player:SendBroadcastMessage("You feel a strange power as you read the book...")  -- Message to the player
    player:PlayDirectSound(8959)  -- Example: Play a mystical sound effect
    player_level = player:GetLevel()

    if player_level < 10
    then
        player:SetLevel(10)
    end

    if player_level >= 10 and player_level < 20
    then
        player:SetLevel(20)
    end

    return true
end

local function OnUseGossip(_, player, _)
    print("this loads")
    player:SendBroadcastMessage("You feel a strange power as you read the book...")  -- Message to the player
--     player:PlaySound(8959)  -- Example: Play a mystical sound effect
    print("this loads")
    return false
end

local function OnDialogStatus(event, player, go)
    print("this loads")
    player:SendBroadcastMessage("You feel a strange power as you read the book...")  -- Message to the player
    player:PlaySound(8959)  -- Example: Play a mystical sound effect
    print("this loads")
end

local ONE_USE = 1 -- how many times the script fires for this object

-- RegisterGameObjectEvent(501000, 2, OnUse)
-- RegisterGameObjectEvent(501000, 14, OnUse)
-- RegisterGameObjectEvent(501000, 6, OnDialogStatus)
RegisterGameObjectEvent(501000, 14, OnUse)
