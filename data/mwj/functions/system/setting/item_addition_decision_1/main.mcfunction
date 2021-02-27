###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:stick",Count:1b,tag:{Tags:["MWLitem"]}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:totem_of_undying",Count:1b,tag:{Tags:["MWLitem"]}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:lingering_potion",Count:1b,tag:{Tags:["MWLitem"]}}]}] SelectItem3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:ender_pearl",Count:1b,tag:{Tags:["MWLitem"]}}]}] SelectItem4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:diamond_hoe",Count:1b,tag:{Tags:["MWLitem"]}}]}] SelectItem5 0

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/item_addition_decision_1/selected_stick
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/item_addition_decision_1/selected_totem_of_undying
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/item_addition_decision_1/selected_potion_death
execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/item_addition_decision_1/selected_ender_pearl
execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/item_addition_decision_1/selected_diamond_hoe