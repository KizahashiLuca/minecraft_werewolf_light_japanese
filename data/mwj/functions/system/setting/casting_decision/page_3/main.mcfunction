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
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:green_stained_glass",tag:{Tags:["MWLsetting","AddedMason"]}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:light_blue_stained_glass",tag:{Tags:["MWLsetting","AddedSeer"]}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:light_blue_concrete",tag:{Tags:["MWLsetting","AddedFkSeer"]}}]}] SelectItem3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:blue_concrete",tag:{Tags:["MWLsetting","AddedSage"]}}]}] SelectItem4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:yellow_stained_glass",tag:{Tags:["MWLsetting","AddedMedium"]}}]}] SelectItem5 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/casting_decision/role/selected_mason
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/casting_decision/role/selected_seer
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/casting_decision/role/selected_fake_seer
execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/casting_decision/role/selected_sage
execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/casting_decision/role/selected_medium