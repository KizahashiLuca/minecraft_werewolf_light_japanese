####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:red_stained_glass",tag:{Tags:["MWLsetting","AddedWolf"]}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:red_concrete_powder",tag:{Tags:["MWLsetting","AddedClWolf"]}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:red_concrete",tag:{Tags:["MWLsetting","AddedWhWolf"]}}]}] SelectItem3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:pink_stained_glass",tag:{Tags:["MWLsetting","AddedMadman"]}}]}] SelectItem4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:pink_concrete",tag:{Tags:["MWLsetting","AddedFanatic"]}}]}] SelectItem5 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/casting_decision/role/selected_wolf
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/casting_decision/role/selected_clever_wolf
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/casting_decision/role/selected_white_wolf
execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/casting_decision/role/selected_madman
execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/casting_decision/role/selected_fanatic