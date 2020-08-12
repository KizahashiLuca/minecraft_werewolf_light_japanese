###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 09 Aug 2020
## Version: v.1.3
###############################

## Process the timer system
function mwj:system/time/time

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MWLsetting"]}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/hide_time_decision/detect_drop

## Detect Selected Item
scoreboard players set @p[tag=Host] Select015secs 1
scoreboard players set @p[tag=Host] Select030secs 1
scoreboard players set @p[tag=Host] Select060secs 1
scoreboard players set @p[tag=Host] Select090secs 1
scoreboard players set @p[tag=Host] Select120secs 1
scoreboard players set @p[tag=Host] Select180secs 1
scoreboard players set @p[tag=Host] Select300secs 1
scoreboard players set @p[tag=Host] SelectCancel 1
scoreboard players set @p[tag=Host] SelectOkay 1
scoreboard players set @p[tag=Host] SelectDecide 1

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:19b,id:"minecraft:paper",tag:{Tags:["MWLsetting","015secs"]}}]}] Select015secs 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:paper",tag:{Tags:["MWLsetting","030secs"]}}]}] Select030secs 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:paper",tag:{Tags:["MWLsetting","060secs"]}}]}] Select060secs 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:paper",tag:{Tags:["MWLsetting","090secs"]}}]}] Select090secs 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:paper",tag:{Tags:["MWLsetting","120secs"]}}]}] Select120secs 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:paper",tag:{Tags:["MWLsetting","180secs"]}}]}] Select180secs 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:25b,id:"minecraft:paper",tag:{Tags:["MWLsetting","300secs"]}}]}] Select300secs 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MWLsetting"]}}]}] SelectCancel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MWLsetting"]}}]}] SelectOkay 0
execute if score #MWL HideTime matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:10b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL HideTime matches 2 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL HideTime matches 4 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL HideTime matches 6 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL HideTime matches 8 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL HideTime matches 12 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL HideTime matches 20 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:16b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0

## Function Each Mode
execute as @p[tag=Host,scores={Select015secs=1}] run function mwj:system/setting/hide_time_decision/selected_015secs
execute as @p[tag=Host,scores={Select030secs=1}] run function mwj:system/setting/hide_time_decision/selected_030secs
execute as @p[tag=Host,scores={Select060secs=1}] run function mwj:system/setting/hide_time_decision/selected_060secs
execute as @p[tag=Host,scores={Select090secs=1}] run function mwj:system/setting/hide_time_decision/selected_090secs
execute as @p[tag=Host,scores={Select120secs=1}] run function mwj:system/setting/hide_time_decision/selected_120secs
execute as @p[tag=Host,scores={Select180secs=1}] run function mwj:system/setting/hide_time_decision/selected_180secs
execute as @p[tag=Host,scores={Select300secs=1}] run function mwj:system/setting/hide_time_decision/selected_300secs
execute as @p[tag=Host,scores={SelectCancel=1}] run function mwj:system/setting/hide_time_decision/selected_cancel
execute as @p[tag=Host,scores={SelectOkay=1}] run function mwj:system/setting/hide_time_decision/selected_ok
execute as @p[tag=Host,scores={SelectDecide=1}] run function mwj:system/setting/hide_time_decision/change_to

## Process the system finished
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 run function mwj:system/setting/exit_setting/exit_setting