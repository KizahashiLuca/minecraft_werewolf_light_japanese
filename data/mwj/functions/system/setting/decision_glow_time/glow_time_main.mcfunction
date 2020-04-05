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
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7rなし\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r1割\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r2割\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r3割\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r5割\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r8割\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r10割\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/decision_glow_time/glow_time_drop

## Detect Selected Item
scoreboard players set @p[tag=Host] Selected000pers 1
scoreboard players set @p[tag=Host] Selected010pers 1
scoreboard players set @p[tag=Host] Selected020pers 1
scoreboard players set @p[tag=Host] Selected030pers 1
scoreboard players set @p[tag=Host] Selected050pers 1
scoreboard players set @p[tag=Host] Selected080pers 1
scoreboard players set @p[tag=Host] Selected100pers 1
scoreboard players set @p[tag=Host] SelectedCancel 1
scoreboard players set @p[tag=Host] SelectedOkay 1
scoreboard players set @p[tag=Host] SelectedDecide 1

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:19b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7rなし\""}}}]}] Selected000pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r1割\""}}}]}] Selected010pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r2割\""}}}]}] Selected020pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r3割\""}}}]}] Selected030pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r5割\""}}}]}] Selected050pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r8割\""}}}]}] Selected080pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:25b,id:"minecraft:paper",tag:{display:{Name:"\"\\u00A7r10割\""}}}]}] Selected100pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:"\"\\u00A7rキャンセル\""}}}]}] SelectedCancel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:tripwire_hook",tag:{display:{Name:"\"\\u00A7rこれで決定\""}}}]}] SelectedOkay 0
execute if score Time GlowTime matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:10b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time GlowTime matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time GlowTime matches 2 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time GlowTime matches 3 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time GlowTime matches 5 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time GlowTime matches 8 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0
execute if score Time GlowTime matches 10 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:16b,id:"minecraft:nether_star",tag:{display:{Name:"\"\\u00A7r選択済み\""}}}]}] SelectedDecide 0

## Function Each Mode
execute if score @p[tag=Host] Selected000pers matches 1 run function mwj:system/setting/decision_glow_time/selected_000pers
execute if score @p[tag=Host] Selected010pers matches 1 run function mwj:system/setting/decision_glow_time/selected_010pers
execute if score @p[tag=Host] Selected020pers matches 1 run function mwj:system/setting/decision_glow_time/selected_020pers
execute if score @p[tag=Host] Selected030pers matches 1 run function mwj:system/setting/decision_glow_time/selected_030pers
execute if score @p[tag=Host] Selected050pers matches 1 run function mwj:system/setting/decision_glow_time/selected_050pers
execute if score @p[tag=Host] Selected080pers matches 1 run function mwj:system/setting/decision_glow_time/selected_080pers
execute if score @p[tag=Host] Selected100pers matches 1 run function mwj:system/setting/decision_glow_time/selected_100pers
execute if score @p[tag=Host] SelectedCancel matches 1 run function mwj:system/setting/decision_glow_time/selected_cancel
execute if score @p[tag=Host] SelectedOkay matches 1 run function mwj:system/setting/decision_glow_time/selected_ok
execute if score @p[tag=Host] SelectedDecide matches 1 run function mwj:system/setting/decision_glow_time/change_to_glow_time