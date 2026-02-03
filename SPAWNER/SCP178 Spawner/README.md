# SCP178 Spawner
> known exploit of strwPatcher
> <img src="cone.png" align="right" style="width:180px; height:auto;"/>

workshop: https://steamcommunity.com/sharedfiles/filedetails/?id=1455911028

this addon adds the SCP-178 swep, which is a pair of 3d glasses that when worn, show you creatures around you. they can only harm you if the glasses are on.

## vulnerability
there is a hilarious vulnerability which allows people to just drop SCP-178 infinitely causing immense lag if spammed for too long.

given the addon is a few years old now, there isn't an official patch by the addon creator, which is why I created one myself. you can replace the old SV file with the one in this folder, or manually add in the patch yourself.


```lua
-- leave things as is

-- LINE 23 SWITCH
net.Receive("Drop178", function(len, ply)
  if (ply:GetNWBool("Wearing178")) then
    Drop178(ply, true)
  else
    print("wtf lmao")
  end
end)

-- YESSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS
```

github: https://github.com/DrVrej/VJ-Base
workshop: https://steamcommunity.com/sharedfiles/filedetails/?id=131759821



