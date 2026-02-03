util.AddNetworkString("Drop178")
util.AddNetworkString("Dropped178")
util.AddNetworkString("Wearing178")
util.AddNetworkString("AlreadyWearing178")
util.AddNetworkString("AttackedBy178")
util.AddNetworkString("NoNavmesh178")

resource.AddFile("materials/entities/ent_drg_scp178.png")
resource.AddFile("materials/entities/npc_drg_scp178_1.png")

function Drop178(ply, normal)
  ply:SetNWBool("Wearing178", false)
  net.Start("Dropped178")
  net.WriteBool(normal)
  net.Send(ply)
  local ent = ents.Create("ent_drg_scp178")
  if not ent:IsValid() then return end
  ent:SetPos(ply:GetPos() + Vector(0, 0, 1))
  ent:Spawn()
	ent:Activate()
end

net.Receive("Drop178", function(len, ply)
  if (ply:GetNWBool("Wearing178")) then
    Drop178(ply, true)
  else
    print("wtf lmao")
  end
end)

function Killed(ply)
  if (ply:GetNWBool("Wearing178")) then
    Drop178(ply, false)
  end
  ply:SetNWBool("TargetedBy178", false)
end

hook.Add("PlayerDeath", "Drop178DeathAndSCP178Kill", function(ply)
  Killed(ply)
end)

hook.Add("PlayerSilentDeath", "Drop178SilentDeathAndSCP178Kill", function(ply)
  Killed(ply)
end)

concommand.Add("remove_all_178_1", function()
  local entities = ents.GetAll()
  for _, ent in pairs(entities) do
    if ent:GetClass() == "npc_drg_scp178_1" then
      ent:Remove()
    end
  end
end)

hook.Add("PhysgunPickup", "SCP178-1PhysgunPickup", function(ply, ent)
  if ent:GetClass() == "npc_drg_scp178_1" then
    return false
  end
end)

hook.Add("ShouldCollide", "SCP178-1ShouldCollide", function(ent1, ent2)
  if ent1:GetClass() == "npc_drg_scp178_1" or ent2:GetClass() == "npc_drg_scp178_1" then
    return false
  end
end)

hook.Add("PlayerSpawnedSENT", "SCP178-1CheckNavmesh", function(ply, ent)
  if ent:GetClass() == "npc_drg_scp178_1" and not navmesh.IsLoaded() then
    net.Start("NoNavmesh178")
    net.Send(ply)
  end
end)
