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
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r前へ\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:elytra",tag:{display:{Name:"\"\\u00A7rエリトラ\"",Lore:["\"滑空ができる\""]}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r次へ\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:map",tag:{display:{Name:"\"\\u00A7rリセット\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/decision_item_addition3/item_addition3_drop

## Detect Selected Item
scoreboard players set @p[tag=Host] SelectedPrevPage 1
scoreboard players set @p[tag=Host] SelectedElytra 1
scoreboard players set @p[tag=Host] SelectedNextPage 1
scoreboard players set @p[tag=Host] SelectedCancel 1
scoreboard players set @p[tag=Host] SelectedReset 1
scoreboard players set @p[tag=Host] SelectedOkay 1
execute if score Time AddedElytra matches 1 run scoreboard players set @p[tag=Host] SelectedDecide1 1

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:18b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r前へ\""}}}]}] SelectedPrevPage 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:elytra",tag:{display:{Name:"\"\\u00A7rエリトラ\"",Lore:["\"滑空ができる\""]}}}]}] SelectedElytra 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:26b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r次へ\""}}}]}] SelectedNextPage 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}]}] SelectedCancel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:31b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7rリセット\""}}}]}] SelectedReset 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}]}] SelectedOkay 0
execute if score Time AddedElytra matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide1 0

## Function Each Mode
execute if score @p[tag=Host] SelectedPrevPage matches 1 run function mwj:system/setting/decision_item_addition3/selected_prevpage
execute if score @p[tag=Host] SelectedElytra matches 1 run function mwj:system/setting/decision_item_addition3/selected_elytra
execute if score @p[tag=Host] SelectedNextPage matches 1 run function mwj:system/setting/decision_item_addition3/selected_nextpage
execute if score @p[tag=Host] SelectedCancel matches 1 run function mwj:system/setting/decision_item_addition3/selected_cancel
execute if score @p[tag=Host] SelectedReset matches 1 run function mwj:system/setting/decision_item_addition3/selected_reset
execute if score @p[tag=Host] SelectedOkay matches 1 run function mwj:system/setting/decision_item_addition3/selected_ok
execute if score @p[tag=Host] SelectedDecide1 matches 1 run function mwj:system/setting/decision_item_addition3/change_to_item_addition3
execute if score @p[tag=Host] SelectedDecide2 matches 1 run function mwj:system/setting/decision_item_addition3/change_to_item_addition3
execute if score @p[tag=Host] SelectedDecide3 matches 1 run function mwj:system/setting/decision_item_addition3/change_to_item_addition3
execute if score @p[tag=Host] SelectedDecide4 matches 1 run function mwj:system/setting/decision_item_addition3/change_to_item_addition3
execute if score @p[tag=Host] SelectedDecide5 matches 1 run function mwj:system/setting/decision_item_addition3/change_to_item_addition3

## Process the system finished
execute if score Time TICK matches 0 if score Time SECOND matches 0 run function mwj:system/setting/exit_setting/exit_setting