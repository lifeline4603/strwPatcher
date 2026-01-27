-- patcher.lua 1.0
--        __             ___       __      __          
--   ___ / /______    __/ _ \___ _/ /_____/ /  ___ ____
--  (_-</ __/ __/ |/|/ / ___/ _ `/ __/ __/ _ \/ -_) __/
-- /___/\__/_/  |__,__/_/   \_,_/\__/\__/_//_/\__/_/   
--
-- "i fucking HATE lua" -lifeline4603
-- 
--
-- thank you for using this script. usage information (incl. tutorial, purpose and license) are available on the following github: https://github.com/lifeline4603/strwPatcher/
-- if you have any issues, errors or questions, do not hesitate to reach out to me. you can also find out how to contact me on here ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
--
-- exploit count: 18
-- to be added: ~40 more?
-- patches done: 2
-- patches available: 1


local exploits = exploits or {}
local exploitfound = exploitfound or {}
exploits.found = {}

local function newexploit(category, name, description, foundexploit)
  table.insert(exploits.found, {category = category, name = name, description = description, foundexploit = foundexploit})
end

local function check()
  exploitfound = {}
  for k, v in pairs(exploits.found) do
    if v.foundexploit() then
      table.insert(exploitfound, v)
    end
  end
end

newexploit("ECONOMY", "Casino Crash Check Desync", "More info: https://github.com/lifeline4603/strwPatcher/tree/main/ECONOMY/Casino%20Crash%20Check%20Desync", function()
    return util.NetworkIDToString(util.NetworkStringToID( "Casino_Crash.Receive" )) == "Casino_Crash.Receive"
end)

newexploit("MISC", "Hacktool Minigame Skip", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "hack_tool.gui" )) == "hack_tool.gui"
end)

newexploit("MISC", "Rogue Scoreboard Hide Name (might be #Accidentally patched?)", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "RogueScoreboard" )) == "RogueScoreboard"
end)

newexploit("WARNING", "KVAC Backdoor Found, INVESTIGATE ASAP", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "DontRunStringCodePLZ" )) == "DontRunStringCodePLZ"
end)

newexploit("WARNING", "Purposeful Backdoor Found, INVESTIGATE ASAP", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "eRUhjdfnjkghRT" )) == "eRUhjdfnjkghRT"
end)

newexploit("WARNING", "Runstring Attack Vector Found, INVESTIGATE ASAP", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "GM_LIB_FASTREQUEST" )) == "GM_LIB_FASTREQUEST"
end)

newexploit("WARNING", "Xenin F4 SQL Injection, INVESTIGATE ASAP", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "F4Menu.RemoveFavourite" )) == "F4Menu.RemoveFavourite"
end)

newexploit("SPAWNER", "VJ Base Entity Spawner", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "vj_npcspawner_sv_create" )) == "vj_npcspawner_sv_create"
end)

newexploit("SPAWNER", "SCP178 Spawner", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "Drop178" )) == "Drop178"
end)

newexploit("SPAWNER", "Webscreen Exploit", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "SpawnWebScreen" )) == "SpawnWebScreen"
end)

newexploit("SPAWNER", "Direct Weapon Giver (KShop)", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "KS_BuyItem" )) == "KS_BuyItem"
end)

newexploit("WARNING", "Ceto Tickets SQL Injection, INVESTIGATE ASAP", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "TicketSystem:CreateAnswer" )) == "TicketSystem:CreateAnswer"
end)

newexploit("WARNING", "CS SQL Injection, INVESTIGATE ASAP", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "CharSystemCreateProfile" )) == "CharSystemCreateProfile"
end)

newexploit("SPAWNER", "SCP 939 Eggs", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "SCP_939_LAYEGG" )) == "SCP_939_LAYEGG"
end)

newexploit("SPAWNER", "Summe Entity Spawner", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "SummeNextbots.SpawnDispenser" )) == "SummeNextbots.SpawnDispenser"
end)

newexploit("SPAWNER", "Summe Droid Spawner", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "SummeNextbots.Spawn" )) == "SummeNextbots.Spawn"
end)

newexploit("SPAWNER", "NPC Tool (1) NPC Spawner", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "sv_npctool_spawner_spawn" )) == "sv_npctool_spawner_spawn"
end)

newexploit("SPAWNER", "Administrative Item Spawn Menu", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "adminSpawnItem" )) == "adminSpawnItem"
end)



check()

for k, v in pairs(exploitfound) do
    --print("[" .. v.category .. "] " .. v.name .. " - " .. v.description)
    MsgC(Color(162,91,72), "[" .. tostring(v.category) .. "] ", Color(174,168,231), tostring(v.name), Color(255,255,255), " - ", Color(128,136,255), tostring(v.description), "\n")
end

