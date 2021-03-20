###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 20 Mar 2021
## Version: v.1.5
###############################

## Process the timer system
function mwj:system/time/time

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{tag:{Tags:["MWLsetting"]}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/game_time_decision/detect_drop

## Detect Selected Item
scoreboard players set @p[tag=Host] Select05mins 1
scoreboard players set @p[tag=Host] Select10mins 1
scoreboard players set @p[tag=Host] Select15mins 1
scoreboard players set @p[tag=Host] Select20mins 1
scoreboard players set @p[tag=Host] Select25mins 1
scoreboard players set @p[tag=Host] Select30mins 1
scoreboard players set @p[tag=Host] Select60mins 1
scoreboard players set @p[tag=Host] SelectCancel 1
scoreboard players set @p[tag=Host] SelectOkay 1
scoreboard players set @p[tag=Host] SelectDecide 1

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:19b,id:"minecraft:paper",tag:{Tags:["MWLsetting","05mins"]}}]}] Select05mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:paper",tag:{Tags:["MWLsetting","10mins"]}}]}] Select10mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:paper",tag:{Tags:["MWLsetting","15mins"]}}]}] Select15mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:paper",tag:{Tags:["MWLsetting","20mins"]}}]}] Select20mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:paper",tag:{Tags:["MWLsetting","25mins"]}}]}] Select25mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:paper",tag:{Tags:["MWLsetting","30mins"]}}]}] Select30mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:25b,id:"minecraft:paper",tag:{Tags:["MWLsetting","60mins"]}}]}] Select60mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{Tags:["MWLsetting"]}}]}] SelectCancel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{Tags:["MWLsetting"]}}]}] SelectOkay 0
execute if score #MWL GameTime matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:10b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL GameTime matches 2 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL GameTime matches 3 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL GameTime matches 4 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL GameTime matches 5 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL GameTime matches 6 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0
execute if score #MWL GameTime matches 12 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:16b,id:"minecraft:nether_star",tag:{Tags:["MWLsetting"]}}]}] SelectDecide 0

## Function Each Mode
execute as @p[tag=Host,scores={Select05mins=1}] run function mwj:system/setting/game_time_decision/selected_05mins
execute as @p[tag=Host,scores={Select10mins=1}] run function mwj:system/setting/game_time_decision/selected_10mins
execute as @p[tag=Host,scores={Select15mins=1}] run function mwj:system/setting/game_time_decision/selected_15mins
execute as @p[tag=Host,scores={Select20mins=1}] run function mwj:system/setting/game_time_decision/selected_20mins
execute as @p[tag=Host,scores={Select25mins=1}] run function mwj:system/setting/game_time_decision/selected_25mins
execute as @p[tag=Host,scores={Select30mins=1}] run function mwj:system/setting/game_time_decision/selected_30mins
execute as @p[tag=Host,scores={Select60mins=1}] run function mwj:system/setting/game_time_decision/selected_60mins
execute as @p[tag=Host,scores={SelectCancel=1}] run function mwj:system/setting/game_time_decision/selected_cancel
execute as @p[tag=Host,scores={SelectOkay=1}] run function mwj:system/setting/game_time_decision/selected_ok
execute as @p[tag=Host,scores={SelectDecide=1}] run function mwj:system/setting/game_time_decision/change_to

## Process the system finished
function mwj:system/setting/casting_decision_common/count_number_of_roles
scoreboard players set #MWL TempVariable 0
execute if score #MWL GameMode matches 1 if score #MWL NumOfWhite > #MWL NumOfBlack if score #MWL NumOfWhite matches 1.. if score #MWL NumOfBlack matches 1.. run scoreboard players set #MWL TempVariable 1
execute if score #MWL GameMode matches 2 if score #MWL NumOfWhite matches 2.. if score #MWL NumOfBlack matches 1.. run scoreboard players set #MWL TempVariable 1
execute if score #MWL GameMode matches 3 if score #MWL NumOfWhite matches 1.. if score #MWL NumOfBlack matches 1.. run scoreboard players set #MWL TempVariable 1
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 if score #MWL TempVariable matches 0 run scoreboard players set #MWL Second 600
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 if score #MWL TempVariable matches 1 run function mwj:system/setting/exit_setting/exit_setting