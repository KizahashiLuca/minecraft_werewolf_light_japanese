###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Process the timer system
function mwj:system/time/time

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f15秒"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f30秒"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f60秒"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f90秒"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f120秒"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f180秒"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f300秒"'}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrier",tag:{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:structure_void",tag:{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}}] ThrowItem 1
execute as @e[type=minecraft:item,scores={ThrowItem=1}] run function mwj:system/setting/decision_hide_time/hide_time_drop

## Detect Selected Item
scoreboard players set @p[tag=Host] Select015secs 1
scoreboard players set @p[tag=Host] Select030secs 1
scoreboard players set @p[tag=Host] Select060secs 1
scoreboard players set @p[tag=Host] Select090secs 1
scoreboard players set @p[tag=Host] Select120secs 1
scoreboard players set @p[tag=Host] Select180secs 1
scoreboard players set @p[tag=Host] Select300secs 1
scoreboard players set @p[tag=Host] SelectCancel 1
scoreboard players set @p[tag=Host] SelectOkay 1
scoreboard players set @p[tag=Host] SelectDecide 1

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:19b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f15秒"'}}}]}] Select015secs 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f30秒"'}}}]}] Select030secs 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f60秒"'}}}]}] Select060secs 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f90秒"'}}}]}] Select090secs 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f120秒"'}}}]}] Select120secs 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f180秒"'}}}]}] Select180secs 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:25b,id:"minecraft:paper",tag:{display:{Name:'"\\u00A7r\\u00A7f300秒"'}}}]}] Select300secs 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:28b,id:"minecraft:barrier",tag:{display:{Name:'"\\u00A7r\\u00A7dキャンセル"'},HideFlags:39}}]}] SelectCancel 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:34b,id:"minecraft:structure_void",tag:{display:{Name:'"\\u00A7r\\u00A7b決定"'},HideFlags:39}}]}] SelectOkay 0
execute if score #MWL HideTime matches 1 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:10b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}]}] SelectDecide 0
execute if score #MWL HideTime matches 2 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:11b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}]}] SelectDecide 0
execute if score #MWL HideTime matches 4 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:12b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}]}] SelectDecide 0
execute if score #MWL HideTime matches 6 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:13b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}]}] SelectDecide 0
execute if score #MWL HideTime matches 8 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:14b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}]}] SelectDecide 0
execute if score #MWL HideTime matches 12 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:15b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}]}] SelectDecide 0
execute if score #MWL HideTime matches 20 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:16b,id:"minecraft:nether_star",tag:{display:{Name:'"\\u00A7r\\u00A7a選択済み"'}}}]}] SelectDecide 0

## Function Each Mode
execute as @p[tag=Host,scores={Select015secs=1}] run function mwj:system/setting/decision_hide_time/selected_015secs
execute as @p[tag=Host,scores={Select030secs=1}] run function mwj:system/setting/decision_hide_time/selected_030secs
execute as @p[tag=Host,scores={Select060secs=1}] run function mwj:system/setting/decision_hide_time/selected_060secs
execute as @p[tag=Host,scores={Select090secs=1}] run function mwj:system/setting/decision_hide_time/selected_090secs
execute as @p[tag=Host,scores={Select120secs=1}] run function mwj:system/setting/decision_hide_time/selected_120secs
execute as @p[tag=Host,scores={Select180secs=1}] run function mwj:system/setting/decision_hide_time/selected_180secs
execute as @p[tag=Host,scores={Select300secs=1}] run function mwj:system/setting/decision_hide_time/selected_300secs
execute as @p[tag=Host,scores={SelectCancel=1}] run function mwj:system/setting/decision_hide_time/selected_cancel
execute as @p[tag=Host,scores={SelectOkay=1}] run function mwj:system/setting/decision_hide_time/selected_ok
execute as @p[tag=Host,scores={SelectDecide=1}] run function mwj:system/setting/decision_hide_time/change_to_hide_time

## Process the system finished
execute if score #MWL Tick matches 0 if score #MWL Second matches 0 run function mwj:system/setting/exit_setting/exit_setting