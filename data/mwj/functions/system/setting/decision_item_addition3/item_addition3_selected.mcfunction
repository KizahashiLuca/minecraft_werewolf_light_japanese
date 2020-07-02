###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Declare Inventory
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:20b,id:"minecraft:trident",tag:{display:{Lore:['"\\u00A7r\\u00A77召雷"']},Damage:248,HideFlags:1}}]}] SelectItem1 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:21b,id:"minecraft:conduit",tag:{display:{Name:'"\\u00a7r\\u00a7bコンカッション地雷"',Lore:['"\\u00a7r\\u00a79発光 (0:10)"','"\\u00a7r\\u00a7c吐き気 Ⅱ (0:10)"','"\\u00a7r\\u00A7f設置範囲1.5mに発効"'],Tag:"\"Mine\""}}}]}] SelectItem2 0
scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:22b,id:"minecraft:crossbow",tag:{Damage:325,Charged:1b,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:'"\\u00A7r\\u00A7f即死の矢"'},CustomPotionEffects:[{Id:7b,Amplifier:3b,Duration:1}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:'"\\u00A7r\\u00A7f即死の矢"'},CustomPotionEffects:[{Id:7b,Amplifier:3b,Duration:1}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:'"\\u00A7r\\u00A7f即死の矢"'},CustomPotionEffects:[{Id:7b,Amplifier:3b,Duration:1}]}}],Enchantments:[{id:"minecraft:multishot",lvl:1s}]}}]}] SelectItem3 0
execute if score #MWL Version matches ..14 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:23b,id:"minecraft:air",tag:{}}]}] SelectItem4 0
execute if score #MWL Version matches 15.. run function mwj:system/setting/decision_item_addition3/detect_haven_honey_block
execute if score #MWL Version matches ..15 run scoreboard players set @p[tag=Host,nbt={Inventory:[{Slot:24b,id:"minecraft:air",tag:{}}]}] SelectItem5 0
execute if score #MWL Version matches 16.. run function mwj:system/setting/decision_item_addition3/detect_haven_soul_lantern

## Function Each Mode
execute as @p[tag=Host,scores={SelectItem1=1}] run function mwj:system/setting/decision_item_addition3/selected_trident
execute as @p[tag=Host,scores={SelectItem2=1}] run function mwj:system/setting/decision_item_addition3/selected_conduit
execute as @p[tag=Host,scores={SelectItem3=1}] run function mwj:system/setting/decision_item_addition3/selected_crossbow
execute as @p[tag=Host,scores={SelectItem4=1}] run function mwj:system/setting/decision_item_addition3/selected_honey_block
execute as @p[tag=Host,scores={SelectItem5=1}] run function mwj:system/setting/decision_item_addition3/selected_soul_lantern