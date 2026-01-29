-- patcher.lua 1.1
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
-- exploit count: 51
-- to be added: ~10 more?
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

newexploit("MOVEMENT", "SCP106 Sinkhole Force", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "106teleport" )) == "106teleport"
end)

newexploit("MISC", "Dragon Vape Ignite", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "DragonVapeIgnite" )) == "DragonVapeIgnite"
end)

newexploit("MISC", "Rangeless Trash Collection", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "CH_GarbageSystem_EmptyTrashContainer" )) == "CH_GarbageSystem_EmptyTrashContainer"
end)

newexploit("MISC", "Remove Player Ragdoll (TFA)", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "TFA.BO3.REMOVERAG" )) == "TFA.BO3.REMOVERAG"
end)

newexploit("MISC", "Set Jobspawn", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "zk_drp_setspawns_save_selected" )) == "zk_drp_setspawns_save_selected"
end)

newexploit("DISRUPTOR", "Create Mass Votes", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "gWare.Utils.SendVoteToServer" )) == "gWare.Utils.SendVoteToServer"
end)

newexploit("DISRUPTOR", "Possible Server Crasher VIA SQL", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "Multicore::UpdateSetting" )) == "Multicore::UpdateSetting"
end)

newexploit("MISC", "Invisibility", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "scp966cloak" )) == "scp966cloak"
end)

newexploit("SPAWNER", "SCP714 Rings", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "scp714_kill" )) == "scp714_kill"
end)

newexploit("DISRUPTOR", "DEFCON Set Text", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "DefconSys1" )) == "DefconSys1"
end)

newexploit("MOVEMENT", "Defibrillator Teleportation", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "Medic.SendRagdollRequest" )) == "Medic.SendRagdollRequest"
end)

newexploit("ECONOMY", "Infinite Money", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "Solve:Store:NPC:Buy" )) == "Solve:Store:NPC:Buy"
end)

newexploit("DISRUPTOR", "Delete Entities/Strip Players", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "StandPose_Server" )) == "StandPose_Server"
end)

newexploit("MISC", "Become Any Job", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "em_become" )) == "em_become"
end)

newexploit("MISC", "Change Model", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "update_store_freebodygroupr" )) == "update_store_freebodygroupr"
end)

newexploit("DISRUPTOR", "Close All Tickets", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "ASayPopupClaim" )) == "ASayPopupClaim"
end)

newexploit("DISRUPTOR", "Admin Announcements", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "announcementadmin" )) == "announcementadmin"
end)

newexploit("MOVEMENT", "Player Teleportation", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "playerteleport" )) == "playerteleport"
end)

newexploit("MISC", "Instant Arrest", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "CH_ADVARREST_HandcuffPlayer" )) == "CH_ADVARREST_HandcuffPlayer"
end)

newexploit("DISRUPTOR", "Mass Defibrillator Deathmatch", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "defibgiveents" )) == "defibgiveents"
end)

newexploit("MISC", "Force Emote", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "sw::amenu::setBonesAngle" )) == "sw::amenu::setBonesAngle"
end)

newexploit("MISC", "Force Emote", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "sw::amenu::setBonesAngle" )) == "sw::amenu::setBonesAngle"
end)

newexploit("MISC", "Change Job (again lol)", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "ENPC.ChangeJobNPC" )) == "ENPC.ChangeJobNPC"
end)

newexploit("MISC", "Change ATM Color (useless tbf)", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "CH_ATM_Net_ChangeATMColor" )) == "CH_ATM_Net_ChangeATMColor"
end)

newexploit("MOVEMENT", "Unfreeze", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "RealisticPolice:FiningSystem" )) == "RealisticPolice:FiningSystem"
end)

newexploit("DISRUPTOR", "Creep Up Lag", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "RealisticPolice:NameCamera" )) == "RealisticPolice:NameCamera"
end)

newexploit("SPAWNER", "NPC Tool (2) NPC Spawner", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "npctool_newspawner_spawn" )) == "npctool_newspawner_spawn"
end)

newexploit("MISC", "Job Disguise", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "disguise" )) == "disguise"
end)

newexploit("DISRUPTOR", "CMenu", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "cmenu" )) == "cmenu"
end)

newexploit("DISRUPTOR", "CMenuTying", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "cmenu_tying" )) == "cmenu_tying"
end)

newexploit("SPAWNER", "MapBuilder", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "MapBuilder_SpawnProp" )) == "MapBuilder_SpawnProp"
end)

newexploit("MISC", "Unrestrictive Name Changes", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "ADC::UpdateName" )) == "ADC::UpdateName"
end)

newexploit("ECONOMY", "Zero`s Meth Cooker 2 Minigame Skip", "More info: TBA", function()
    return util.NetworkIDToString(util.NetworkStringToID( "zmlab2_MiniGame" )) == "zmlab2_MiniGame"
end)

check()

for k, v in pairs(exploitfound) do
    --print("[" .. v.category .. "] " .. v.name .. " - " .. v.description)
    MsgC(Color(162,91,72), "[" .. tostring(v.category) .. "] ", Color(174,168,231), tostring(v.name), Color(255,255,255), " - ", Color(128,136,255), tostring(v.description), "\n")
end
