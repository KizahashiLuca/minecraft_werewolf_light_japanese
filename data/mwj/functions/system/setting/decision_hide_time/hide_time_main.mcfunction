###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Timer System
function mwj:system/setting/setting_time

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r15秒\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r30秒\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r60秒\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r90秒\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r120秒\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r180秒\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r300秒\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/decision_hide_time/hide_time_drop

## Detect Selected Item
scoreboard players set @p[tag=host] Selected015secs 1
scoreboard players set @p[tag=host] Selected030secs 1
scoreboard players set @p[tag=host] Selected060secs 1
scoreboard players set @p[tag=host] Selected090secs 1
scoreboard players set @p[tag=host] Selected120secs 1
scoreboard players set @p[tag=host] Selected180secs 1
scoreboard players set @p[tag=host] Selected300secs 1
scoreboard players set @p[tag=host] SelectedCancel 1
scoreboard players set @p[tag=host] SelectedOkay 1
scoreboard players set @p[tag=host] SelectedDecide 1

## Declare Inventory
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:19b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r15秒\""}}}]}] Selected015secs 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:20b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r30秒\""}}}]}] Selected030secs 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:21b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r60秒\""}}}]}] Selected060secs 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:22b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r90秒\""}}}]}] Selected090secs 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:23b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r120秒\""}}}]}] Selected120secs 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:24b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r180秒\""}}}]}] Selected180secs 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:25b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r300秒\""}}}]}] Selected300secs 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}]}] SelectedCancel 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:34b,id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}]}] SelectedOkay 0
execute if score Time HideTime matches 1 run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:10b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time HideTime matches 2 run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time HideTime matches 4 run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time HideTime matches 6 run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time HideTime matches 8 run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time HideTime matches 12 run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time HideTime matches 20 run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:16b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0

## Function Each Mode
execute if score @p[tag=host] Selected015secs matches 1 run function mwj:system/setting/decision_hide_time/selected_015secs
execute if score @p[tag=host] Selected030secs matches 1 run function mwj:system/setting/decision_hide_time/selected_030secs
execute if score @p[tag=host] Selected060secs matches 1 run function mwj:system/setting/decision_hide_time/selected_060secs
execute if score @p[tag=host] Selected090secs matches 1 run function mwj:system/setting/decision_hide_time/selected_090secs
execute if score @p[tag=host] Selected120secs matches 1 run function mwj:system/setting/decision_hide_time/selected_120secs
execute if score @p[tag=host] Selected180secs matches 1 run function mwj:system/setting/decision_hide_time/selected_180secs
execute if score @p[tag=host] Selected300secs matches 1 run function mwj:system/setting/decision_hide_time/selected_300secs
execute if score @p[tag=host] SelectedCancel matches 1 run function mwj:system/setting/decision_hide_time/selected_cancel
execute if score @p[tag=host] SelectedOkay matches 1 run function mwj:system/setting/decision_hide_time/selected_ok
execute if score @p[tag=host] SelectedDecide matches 1 run function mwj:system/setting/decision_hide_time/change_to_hide_time