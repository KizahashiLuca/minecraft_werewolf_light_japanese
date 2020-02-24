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
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:cobweb",tag:{display:{Name:"\"\\u00A7r潜伏時間設定\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7rゲーム時間設定\""}}}}] ThrowItem 1
execute if score Time PrevAddedRole matches 1.. run scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:armor_stand",tag:{display:{Name:"\"\\u00A7r追加役職設定\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_sword",tag:{display:{Name:"\"\\u00A7r追加アイテム設定\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:map",tag:{display:{Name:"\"\\u00A7rモード設定\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rゲームキャンセル\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rゲームスタート\""}}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/choose_mode/choose_mode_drop

## Detect Selected Item
scoreboard players set @p[tag=host] ChosenHidingTime 1
scoreboard players set @p[tag=host] ChosenTimeLimit 1
scoreboard players set @p[tag=host] ChosenRoleAdd 1
scoreboard players set @p[tag=host] ChosenItemAdd 1
scoreboard players set @p[tag=host] ChosenGameMode 1
scoreboard players set @p[tag=host] SelectedCancel 1
scoreboard players set @p[tag=host] SelectedOkay 1

## Declare Inventory
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:20b,id:"minecraft:cobweb",tag:{display:{Name:"\"\\u00A7r潜伏時間設定\""}}}]}] ChosenHidingTime 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:21b,id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7rゲーム時間設定\""}}}]}] ChosenTimeLimit 0
execute if score Time PrevAddedRole matches 1.. run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:22b,id:"minecraft:armor_stand",tag:{display:{Name:"\"\\u00A7r追加役職設定\""}}}]}] ChosenRoleAdd 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:23b,id:"minecraft:diamond_sword",tag:{display:{Name:"\"\\u00A7r追加アイテム設定\""}}}]}] ChosenItemAdd 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:24b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7rモード設定\""}}}]}] ChosenGameMode 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rゲームキャンセル\""}}}]}] SelectedCancel 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:34b,id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rゲームスタート\""}}}]}] SelectedOkay 0

## Function Each Mode
execute if score @p[tag=host] ChosenHidingTime matches 1 run function mwj:system/setting/decision_hiding_time/change_to_hiding_time
execute if score @p[tag=host] ChosenTimeLimit matches 1 run function mwj:system/setting/decision_time_limit/change_to_time_limit
execute if score Time PrevAddedRole matches 1.. if score @p[tag=host] ChosenRoleAdd matches 1 run function mwj:system/setting/decision_role_addition/change_to_role_addition
execute if score @p[tag=host] ChosenGameMode matches 1 run function mwj:system/setting/decision_game_mode/change_to_game_mode
execute if score @p[tag=host] ChosenItemAdd matches 1 run function mwj:system/setting/decision_item_addition1/change_to_item_addition1
execute if score @p[tag=host] SelectedCancel matches 1 run function mwj:stop
execute if score @p[tag=host] SelectedOkay matches 1 run function mwj:system/setting/exit_setting/exit_setting