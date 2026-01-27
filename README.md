# strwPatcher
> a script that assists you in patching known garry's mod net exploits in your server
> <img src="patcher.png" align="right" style="width:190px; height:auto;"/>

if you're a server owner and are struggling with people exploiting on your server, this script and github repo might help you!

if you know of an exploit, you may report it to me and I'll try to fix it, but no promises. I am not a genius at lua.

## what is strwPatcher
strwPatcher is a script that automatically finds and detects known vulnerabilities in some of the most popular Garry's Mod addons, such as Xenin's F4 Menu, VJ Base, NPC Tool and more. this is a massive list of some of the most usable exploits, with most of them still working to this day. what sets this script apart is that in the near future at things develop, each individual exploit will have its own custom patch crafted by me or contributors, for free, forever.

obviously I can't post the full code of some addons, like the ones from gmodstore, because that would be illegal, but I will try to make it as easy as possible to find and apply the patch. I also want to refrain from posting the actual exploit itself, and merely put the patch for you to use, as I want to avoid skids from using these like a handbook.

## repository format
this repository is organized to put each exploit in its own category for you to understand. I recommend you go through the categories to understand what they do if you happen to get something flagged under one of those, though the names should be self-explanatory.

categories get added as I find more and more, though I might end up putting everything else in MISC if it gets too much.

## how do I run this?
this is a very simple process.
1. download `patcher.lua` in main
2. put this script in `GarrysMod/garrysmod/lua`
3. join your server
4. run `lua_openscript_cl patcher.lua`

if your server doesn't have `sv_allowcslua 1` enabled, you won't be able to run this, so please create a new folder under `GarrysMod/garrysmod/addons` called `patcher` and create a path that looks like this: `GarrysMod/garrysmod/addons/patcher/lua/autorun/client/patcher.lua`

if you have issues running this script, don't add me on discord, but instead join the physgun discord (discord.gg/physgun) and @ me anywhere. I don't accept friend requests from randoms.

## licence or whatever
I am not gonna apply one of those stupid long 1000000 word licenses here for you to follow, so I am instead doing a very simple agreement. you are allowed to use this script at any time. you are only permitted to use this to aid in bulletproofing your server. using this script for any other reason is viewed as malignent and is not allowed. you may share this script around and make your own modifications to it, but you may not deface it in any ways such as removing the strwPatcher branding, original credits, or marketing it as your own.

thank you :3
