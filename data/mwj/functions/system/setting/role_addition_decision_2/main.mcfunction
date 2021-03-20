###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:purple_stained_glass",tag:{Tags:["MWLsetting","AddedFox"]}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:green_stained_glass",tag:{Tags:["MWLsetting","AddedMason"]}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:cyan_stained_glass",tag:{Tags:["MWLsetting","AddedDetec"]}}]}] SelectItem3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:blue_stained_glass",tag:{Tags:["MWLsetting","AddedThief"]}}]}] SelectItem4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:orange_stained_glass",tag:{Tags:["MWLsetting","AddedCat"]}}]}] SelectItem5 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/role_addition_decision_2/selected_fox
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/role_addition_decision_2/selected_mason
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/role_addition_decision_2/selected_detective
execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/role_addition_decision_2/selected_thief
execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/role_addition_decision_2/selected_cat