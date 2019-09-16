###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Timer System
function mwj:system/time

## Title Count Down
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run title @a[tag=host] times 5 10 5
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run title @a[tag=host] title [{"text":"初期設定時間","color":"green","bold":true}]
execute if score Time TICK matches 0 unless score Time SECOND matches 0 run title @a[tag=host] subtitle [{"score":{"name":"Time","objective":"SECOND"},"color":"green","bold":true}]

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:armor_stand",tag:{display:{Name:"\"\\u00A7r追加役職設定\""}}}}] ThrowArmorStand 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7r制限時間設定\""}}}}] ThrowClock 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rゲームキャンセル\""}}}}] ThrowBarrier 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rゲームスタート\""}}}}] ThrowWireHook 1
execute as @e[type=minecraft:item,scores={ThrowArmorStand=1}] run function mwj:system/setting/choose_mode/choose_mode_drop
execute as @e[type=minecraft:item,scores={ThrowClock=1}] run function mwj:system/setting/choose_mode/choose_mode_drop
execute as @e[type=minecraft:item,scores={ThrowBarrier=1}] run function mwj:system/setting/choose_mode/choose_mode_drop
execute as @e[type=minecraft:item,scores={ThrowWireHook=1}] run function mwj:system/setting/choose_mode/choose_mode_drop

## Detect Selected Item
scoreboard players set @a[tag=host] SelectedAStand 1
scoreboard players set @a[tag=host] SelectedClock 1
scoreboard players set @a[tag=host] SelectedBarrier 1
scoreboard players set @a[tag=host] SelectedWire 1

## Declare Inventory
scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:21b,id:"minecraft:armor_stand",tag:{display:{Name:"\"\\u00A7r追加役職設定\""}}}]}] SelectedAStand 0
scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:23b,id:"minecraft:clock",tag:{display:{Name:"\"\\u00A7r制限時間設定\""}}}]}] SelectedClock 0
scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rゲームキャンセル\""}}}]}] SelectedBarrier 0
scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:34b,id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rゲームスタート\""}}}]}] SelectedWire 0

## Function Each Mode
execute as @a[tag=host] if score @s SelectedAStand matches 1 run function mwj:system/setting/decision_role_addition/change_to_role_addition
execute as @a[tag=host] if score @s SelectedClock matches 1 run function mwj:system/setting/decision_time_limit/change_to_time_limit
execute as @a[tag=host] if score @s SelectedBarrier matches 1 run function mwj:system/setting/remove_scoreboard
execute as @a[tag=host] if score @s SelectedBarrier matches 1 run function mwj:stop
execute as @a[tag=host] if score @s SelectedWire matches 1 run function mwj:system/setting/exit_setting