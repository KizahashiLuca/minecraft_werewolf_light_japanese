###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Process the timer system
function mwj:system/time/time

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7fなし"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f1割"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f2割"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f3割"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f5割"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f8割"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f10割"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/glow_time_decision/detect_drop

## Detect Select Item
scoreboard players set @p[tag=Host] Select000pers 1
scoreboard players set @p[tag=Host] Select010pers 1
scoreboard players set @p[tag=Host] Select020pers 1
scoreboard players set @p[tag=Host] Select030pers 1
scoreboard players set @p[tag=Host] Select050pers 1
scoreboard players set @p[tag=Host] Select080pers 1
scoreboard players set @p[tag=Host] Select100pers 1
scoreboard players set @p[tag=Host] SelectCancel 1
scoreboard players set @p[tag=Host] SelectOkay 1
scoreboard players set @p[tag=Host] SelectDecide 1

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:19b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7fなし"'}}}]}] Select000pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f1割"'}}}]}] Select010pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f2割"'}}}]}] Select020pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f3割"'}}}]}] Select030pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f5割"'}}}]}] Select050pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f8割"'}}}]}] Select080pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:25b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f10割"'}}}]}] Select100pers 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39}}]}] SelectCancel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39}}]}] SelectOkay 0
execute if score #MWL GlowTime matches 0 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:10b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}]}] SelectDecide 0
execute if score #MWL GlowTime matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}]}] SelectDecide 0
execute if score #MWL GlowTime matches 2 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}]}] SelectDecide 0
execute if score #MWL GlowTime matches 3 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}]}] SelectDecide 0
execute if score #MWL GlowTime matches 5 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}]}] SelectDecide 0
execute if score #MWL GlowTime matches 8 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}]}] SelectDecide 0
execute if score #MWL GlowTime matches 10 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:16b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}]}] SelectDecide 0

## Function Each Mode
execute as @p[tag=Host,scores={Select000pers=1}] run function mwj:system/setting/glow_time_decision/selected_000pers
execute as @p[tag=Host,scores={Select010pers=1}] run function mwj:system/setting/glow_time_decision/selected_010pers
execute as @p[tag=Host,scores={Select020pers=1}] run function mwj:system/setting/glow_time_decision/selected_020pers
execute as @p[tag=Host,scores={Select030pers=1}] run function mwj:system/setting/glow_time_decision/selected_030pers
execute as @p[tag=Host,scores={Select050pers=1}] run function mwj:system/setting/glow_time_decision/selected_050pers
execute as @p[tag=Host,scores={Select080pers=1}] run function mwj:system/setting/glow_time_decision/selected_080pers
execute as @p[tag=Host,scores={Select100pers=1}] run function mwj:system/setting/glow_time_decision/selected_100pers
execute as @p[tag=Host,scores={SelectCancel=1}] run function mwj:system/setting/glow_time_decision/selected_cancel
execute as @p[tag=Host,scores={SelectOkay=1}] run function mwj:system/setting/glow_time_decision/selected_ok
execute as @p[tag=Host,scores={SelectDecide=1}] run function mwj:system/setting/glow_time_decision/change_to

## Process the system finished
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 run function mwj:system/setting/exit_setting/exit_setting