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
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f5分"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f10分"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f15分"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f20分"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f25分"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f30分"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f60分"'}}}}] ThrowItem 1
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
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:19b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f5分"'}}}]}] Select05mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f10分"'}}}]}] Select10mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f15分"'}}}]}] Select15mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f20分"'}}}]}] Select20mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f25分"'}}}]}] Select25mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f30分"'}}}]}] Select30mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:25b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f60分"'}}}]}] Select60mins 0
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
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 run function mwj:system/setting/exit_setting/exit_setting