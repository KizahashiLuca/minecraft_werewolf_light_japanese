###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:elytra",tag:{Unbreakable:1}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:conduit",tag:{display:{Name:"\"\\u00a7r\\u00a7b地雷\"",Lore:["\"\\u00a7r\\u00a79発光 (0:10)\"","\"\\u00a7r\\u00a7c移動速度低下 Ⅶ (0:10)\"","\"\"","\"\\u00a7r\\u00a75効果:\"","\"\\u00a7r\\u00a7c移動速度上昇 -100%\"","\"\\u00a7r捨てた範囲1.5mに発効\""],Tag:"\"Mine\""}}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:air",tag:{}}]}] SelectItem3 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:air",tag:{}}]}] SelectItem4 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:air",tag:{}}]}] SelectItem5 0

## Function Each Mode
execute if score @p[tag=Host] SelectItem1 matches 1 run function mwj:system/setting/decision_item_addition3/selected_elytra
execute if score @p[tag=Host] SelectItem2 matches 1 run function mwj:system/setting/decision_item_addition3/selected_conduit
# execute if score @p[tag=Host] SelectItem3 matches 1 run function mwj:system/setting/decision_item_addition3/selected_invis
# execute if score @p[tag=Host] SelectItem4 matches 1 run function mwj:system/setting/decision_item_addition3/selected_speed
# execute if score @p[tag=Host] SelectItem5 matches 1 run function mwj:system/setting/decision_item_addition3/selected_jump