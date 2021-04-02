###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MWLsetting"]}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/glow_time_decision/detect_drop

## Detect Select Item
scoreboard players set @p[tag=Host] Select000pers 1
scoreboard players set @p[tag=Host] Select010pers 1
scoreboard players set @p[tag=Host] Select020pers 1
scoreboard players set @p[tag=Host] Select030pers 1
scoreboard players set @p[tag=Host] Select050pers 1
scoreboard players set @p[tag=Host] Select080pers 1
scoreboard players set @p[tag=Host] Select100pers 1
scoreboard players set @p[tag=Host] SelectCancel 1
scoreboard players set @p[tag=Host] SelectOkay 1
scoreboard players set @p[tag=Host] SelectDecide 1

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:19b,id:"minecraft:paper",tag:{Tags:["MWLsetting","000pers"]}}]}] Select000pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:paper",tag:{Tags:["MWLsetting","010pers"]}}]}] Select010pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:paper",tag:{Tags:["MWLsetting","020pers"]}}]}] Select020pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:paper",tag:{Tags:["MWLsetting","030pers"]}}]}] Select030pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:paper",tag:{Tags:["MWLsetting","050pers"]}}]}] Select050pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:paper",tag:{Tags:["MWLsetting","080pers"]}}]}] Select080pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:25b,id:"minecraft:paper",tag:{Tags:["MWLsetting","100pers"]}}]}] Select100pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MWLsetting"]}}]}] SelectCancel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MWLsetting"]}}]}] SelectOkay 0
execute if score #MWL GlowTime matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:10b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL GlowTime matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL GlowTime matches 2 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL GlowTime matches 3 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL GlowTime matches 5 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL GlowTime matches 8 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL GlowTime matches 10 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:16b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0

## Function Each Mode
execute as @p[tag=Host,scores={Select000pers=1}] run function mwj:system/setting/glow_time_decision/selected_000pers
execute as @p[tag=Host,scores={Select010pers=1}] run function mwj:system/setting/glow_time_decision/selected_010pers
execute as @p[tag=Host,scores={Select020pers=1}] run function mwj:system/setting/glow_time_decision/selected_020pers
execute as @p[tag=Host,scores={Select030pers=1}] run function mwj:system/setting/glow_time_decision/selected_030pers
execute as @p[tag=Host,scores={Select050pers=1}] run function mwj:system/setting/glow_time_decision/selected_050pers
execute as @p[tag=Host,scores={Select080pers=1}] run function mwj:system/setting/glow_time_decision/selected_080pers
execute as @p[tag=Host,scores={Select100pers=1}] run function mwj:system/setting/glow_time_decision/selected_100pers
execute as @p[tag=Host,scores={SelectCancel=1}] run function mwj:system/setting/glow_time_decision/selected_cancel
execute as @p[tag=Host,scores={SelectOkay=1}] run function mwj:system/setting/glow_time_decision/selected_ok
execute as @p[tag=Host,scores={SelectDecide=1}] run function mwj:system/setting/glow_time_decision/change_to