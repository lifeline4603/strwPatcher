# Unlimited Ticks Processing
> known exploit of strwPatcher
> <img src="cone.png" align="right" style="width:180px; height:auto;"/>

console command: sv_maxusrcmdprocessticks - value: 0

sv_maxusrcmdprocessticks controls the amount of client issued usrcmd ticks can be replayed in the event of packet loss, with 0 being unlimited amounts

## vulnerability
there is a really old vulnerability that allows people to abuse this with cheats. having this value set at 0 allows malicious actors with advanced cheats to do the following:

- desynculation
- - allows the player to be desynced 5-30 seconds from the server, meaning their actual position is desynced to what the server and other clients see
- rapid fire
- - allows for the rapid use of any sweps (basically turn anything into a minigun)
- speedhack

you can easily fix this vulnerability by setting the value back to its default setting of 24, and if required, higher. this has **no impact on server performance** of stability.