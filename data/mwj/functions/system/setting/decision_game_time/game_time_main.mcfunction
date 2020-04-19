###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Process the timer system
function mwj:system/time/time

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r5分\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r10分\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r15分\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r20分\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r25分\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r30分\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r60分\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/decision_game_time/time_limit_drop

## Detect Selected Item
scoreboard players set @p[tag=Host] Selected05mins 1
scoreboard players set @p[tag=Host] Selected10mins 1
scoreboard players set @p[tag=Host] Selected15mins 1
scoreboard players set @p[tag=Host] Selected20mins 1
scoreboard players set @p[tag=Host] Selected25mins 1
scoreboard players set @p[tag=Host] Selected30mins 1
scoreboard players set @p[tag=Host] Selected60mins 1
scoreboard players set @p[tag=Host] SelectedCancel 1
scoreboard players set @p[tag=Host] SelectedOkay 1
scoreboard players set @p[tag=Host] SelectedDecide 1

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:19b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r5分\""}}}]}] Selected05mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r10分\""}}}]}] Selected10mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r15分\""}}}]}] Selected15mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r20分\""}}}]}] Selected20mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r25分\""}}}]}] Selected25mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r30分\""}}}]}] Selected30mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:25b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r60分\""}}}]}] Selected60mins 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}]}] SelectedCancel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}]}] SelectedOkay 0
execute if score Time GameTime matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:10b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time GameTime matches 2 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time GameTime matches 3 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time GameTime matches 4 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time GameTime matches 5 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time GameTime matches 6 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time GameTime matches 12 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:16b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0

## Function Each Mode
execute if score @p[tag=Host] Selected05mins matches 1 run function mwj:system/setting/decision_game_time/selected_05mins
execute if score @p[tag=Host] Selected10mins matches 1 run function mwj:system/setting/decision_game_time/selected_10mins
execute if score @p[tag=Host] Selected15mins matches 1 run function mwj:system/setting/decision_game_time/selected_15mins
execute if score @p[tag=Host] Selected20mins matches 1 run function mwj:system/setting/decision_game_time/selected_20mins
execute if score @p[tag=Host] Selected25mins matches 1 run function mwj:system/setting/decision_game_time/selected_25mins
execute if score @p[tag=Host] Selected30mins matches 1 run function mwj:system/setting/decision_game_time/selected_30mins
execute if score @p[tag=Host] Selected60mins matches 1 run function mwj:system/setting/decision_game_time/selected_60mins
execute if score @p[tag=Host] SelectedCancel matches 1 run function mwj:system/setting/decision_game_time/selected_cancel
execute if score @p[tag=Host] SelectedOkay matches 1 run function mwj:system/setting/decision_game_time/selected_ok
execute if score @p[tag=Host] SelectedDecide matches 1 run function mwj:system/setting/decision_game_time/change_to_time_limit

## Process the system finished
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mwj:system/setting/exit_setting/exit_setting