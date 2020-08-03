###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:trident",tag:{Tags:"MWLitem"}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:conduit",tag:{Tags:"MWLitem"}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:crossbow",tag:{Tags:"MWLitem"}}]}] SelectItem3 0
execute if score #MWL Version matches ..14 run scoreboard players set @p[tag=Host,nbt=!{Inventory:[{Slot:23b}]}] SelectItem4 0
execute if score #MWL Version matches 15.. run function mwj:system/setting/decision_item_addition3/detect_haven_honey_block
execute if score #MWL Version matches ..15 run scoreboard players set @p[tag=Host,nbt=!{Inventory:[{Slot:24b}]}] SelectItem5 0
execute if score #MWL Version matches 16.. run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:lantern",tag:{Tags:"MWLitem"}}]}] SelectItem5 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/decision_item_addition3/selected_trident
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/decision_item_addition3/selected_conduit
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/decision_item_addition3/selected_crossbow
execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/decision_item_addition3/selected_honey_block
execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/decision_item_addition3/selected_soul_lantern