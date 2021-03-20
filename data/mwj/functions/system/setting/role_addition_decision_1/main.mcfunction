###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:red_stained_glass",tag:{Tags:["MWLsetting","AddedWolf"]}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:pink_stained_glass",tag:{Tags:["MWLsetting","AddedMadman"]}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:lime_stained_glass",tag:{Tags:["MWLsetting","AddedVilla"]}}]}] SelectItem3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:light_blue_stained_glass",tag:{Tags:["MWLsetting","AddedSeer"]}}]}] SelectItem4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:yellow_stained_glass",tag:{Tags:["MWLsetting","AddedMedium"]}}]}] SelectItem5 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/role_addition_decision_1/selected_wolf
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/role_addition_decision_1/selected_madman
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/role_addition_decision_1/selected_villager
execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/role_addition_decision_1/selected_seer
execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/role_addition_decision_1/selected_medium