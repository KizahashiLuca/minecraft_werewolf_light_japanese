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
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r10分\""}}}}] Throw10mins 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r15分\""}}}}] Throw15mins 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r20分\""}}}}] Throw20mins 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r25分\""}}}}] Throw25mins 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r30分\""}}}}] Throw30mins 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}}] ThrowBarrier 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}}] ThrowWireHook 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}}] ThrowNetherStar 1
execute as @e[type=minecraft:item,scores={Throw10mins=1}] run function mwj:system/setting/decision_time_limit/time_limit_drop
execute as @e[type=minecraft:item,scores={Throw15mins=1}] run function mwj:system/setting/decision_time_limit/time_limit_drop
execute as @e[type=minecraft:item,scores={Throw20mins=1}] run function mwj:system/setting/decision_time_limit/time_limit_drop
execute as @e[type=minecraft:item,scores={Throw25mins=1}] run function mwj:system/setting/decision_time_limit/time_limit_drop
execute as @e[type=minecraft:item,scores={Throw30mins=1}] run function mwj:system/setting/decision_time_limit/time_limit_drop
execute as @e[type=minecraft:item,scores={ThrowBarrier=1}] run function mwj:system/setting/decision_time_limit/time_limit_drop
execute as @e[type=minecraft:item,scores={ThrowWireHook=1}] run function mwj:system/setting/decision_time_limit/time_limit_drop
execute as @e[type=minecraft:item,scores={ThrowNetherStar=1}] run function mwj:system/setting/decision_time_limit/time_limit_drop

## Detect Selected Item
scoreboard players set @a[tag=host] Selected10mins 1
scoreboard players set @a[tag=host] Selected15mins 1
scoreboard players set @a[tag=host] Selected20mins 1
scoreboard players set @a[tag=host] Selected25mins 1
scoreboard players set @a[tag=host] Selected30mins 1
scoreboard players set @a[tag=host] SelectedBarrier 1
scoreboard players set @a[tag=host] SelectedWire 1
scoreboard players set @a[tag=host] SelectedStar 1

## Declare Inventory
scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:20b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r10分\""}}}]}] Selected10mins 0
scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:21b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r15分\""}}}]}] Selected15mins 0
scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:22b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r20分\""}}}]}] Selected20mins 0
scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:23b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r25分\""}}}]}] Selected25mins 0
scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:24b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r30分\""}}}]}] Selected30mins 0
scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}]}] SelectedBarrier 0
scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:34b,id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}]}] SelectedWire 0
execute if score Time LimitTime matches 2 run scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedStar 0
execute if score Time LimitTime matches 3 run scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedStar 0
execute if score Time LimitTime matches 4 run scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedStar 0
execute if score Time LimitTime matches 5 run scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedStar 0
execute if score Time LimitTime matches 6 run scoreboard players set @a[tag=host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedStar 0

## Function Each Mode
execute as @a[tag=host] if score @s Selected10mins matches 1 run function mwj:system/setting/decision_time_limit/selected_10mins
execute as @a[tag=host] if score @s Selected15mins matches 1 run function mwj:system/setting/decision_time_limit/selected_15mins
execute as @a[tag=host] if score @s Selected20mins matches 1 run function mwj:system/setting/decision_time_limit/selected_20mins
execute as @a[tag=host] if score @s Selected25mins matches 1 run function mwj:system/setting/decision_time_limit/selected_25mins
execute as @a[tag=host] if score @s Selected30mins matches 1 run function mwj:system/setting/decision_time_limit/selected_30mins
execute as @a[tag=host] if score @s SelectedBarrier matches 1 run function mwj:system/setting/decision_time_limit/selected_cancel
execute as @a[tag=host] if score @s SelectedWire matches 1 run function mwj:system/setting/decision_time_limit/selected_ok
execute as @a[tag=host] if score @s SelectedStar matches 1 run function mwj:system/setting/decision_time_limit/change_to_time_limit