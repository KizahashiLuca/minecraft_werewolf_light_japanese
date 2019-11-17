###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Timer System
function mwj:system/setting/setting_time

## Detect Dropping
execute if score Time PrevAddedRole matches 1.. run scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:armor_stand",tag:{display:{Name:"\"\\u00A7r追加役職設定\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:map",tag:{display:{Name:"\"\\u00A7rモード設定\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7r制限時間設定\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rゲームキャンセル\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rゲームスタート\""}}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/choose_mode/choose_mode_drop

## Detect Selected Item
execute if score Time PrevAddedRole matches 1.. run scoreboard players set @p[tag=host] SelectedAStand 1
scoreboard players set @p[tag=host] SelectedPattern 1
scoreboard players set @p[tag=host] SelectedClock 1
scoreboard players set @p[tag=host] SelectedBarrier 1
scoreboard players set @p[tag=host] SelectedWire 1

## Declare Inventory
execute if score Time PrevAddedRole matches 1.. run scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:21b,id:"minecraft:armor_stand",tag:{display:{Name:"\"\\u00A7r追加役職設定\""}}}]}] SelectedAStand 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:22b,id:"minecraft:map",tag:{display:{Name:"\"\\u00A7rモード設定\""}}}]}] SelectedPattern 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:23b,id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7r制限時間設定\""}}}]}] SelectedClock 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rゲームキャンセル\""}}}]}] SelectedBarrier 0
scoreboard players set @p[tag=host,nbt={Inventory:[{Slot:34b,id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rゲームスタート\""}}}]}] SelectedWire 0

## Function Each Mode
execute if score Time PrevAddedRole matches 1.. if score @p[tag=host] SelectedAStand matches 1 run function mwj:system/setting/decision_role_addition/change_to_role_addition
execute if score @p[tag=host] SelectedPattern matches 1 run function mwj:system/setting/decision_game_mode/change_to_game_mode
execute if score @p[tag=host] SelectedClock matches 1 run function mwj:system/setting/decision_time_limit/change_to_time_limit
execute if score @p[tag=host] SelectedBarrier matches 1 run function mwj:stop
execute if score @p[tag=host] SelectedWire matches 1 run function mwj:system/setting/exit_setting/exit_setting