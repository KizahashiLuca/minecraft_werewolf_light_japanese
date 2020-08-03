###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:stick",tag:{Tags:"MWLitem"}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:totem_of_undying",tag:{Tags:"MWLitem"}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:lingering_potion",tag:{Tags:"MWLitem"}}]}] SelectItem3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:ender_pearl",tag:{Tags:"MWLitem"}}]}] SelectItem4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:diamond_hoe",tag:{Tags:"MWLitem"}}]}] SelectItem5 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/decision_item_addition1/selected_stick
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/decision_item_addition1/selected_totem
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/decision_item_addition1/selected_death2
execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/decision_item_addition1/selected_pearl
execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/decision_item_addition1/selected_hoe