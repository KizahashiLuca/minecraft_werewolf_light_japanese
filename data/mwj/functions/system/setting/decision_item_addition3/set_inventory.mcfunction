###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 02 Aug 2020
## Version: v.1.1
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.11 minecraft:trident{display:{Lore:['"\\u00A7r\\u00A77召雷"','"\\u00a7r\\u00A7f使用方法 : 投擲"','"\\u00a7r\\u00A7f効果範囲 : 半径4m"']},Damage:248,HideFlags:1} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:conduit{display:{Name:'"\\u00a7r\\u00a7bコンカッション地雷"',Lore:['"\\u00a7r\\u00a79発光 (0:10)"','"\\u00a7r\\u00a7c吐き気 Ⅱ (0:10)"','"\\u00a7r\\u00A7f設置方法 : Shift+Qキー同時押し"','"\\u00a7r\\u00A7f設置以後 : アイテム非消失・設置者回収可能"','"\\u00a7r\\u00A7f効果範囲 : 半径1.5m"']},Tags:"Mine"} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:crossbow{Damage:325,Charged:1b,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:'"\\u00A7r\\u00A7f即死の矢"'},CustomPotionEffects:[{Id:7b,Amplifier:3b,Duration:1}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:'"\\u00A7r\\u00A7f即死の矢"'},CustomPotionEffects:[{Id:7b,Amplifier:3b,Duration:1}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:'"\\u00A7r\\u00A7f即死の矢"'},CustomPotionEffects:[{Id:7b,Amplifier:3b,Duration:1}]}}],Enchantments:[{id:"minecraft:multishot",lvl:1s}]} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:air 1
execute if score #MWL Version matches 15.. run function mwj:system/setting/decision_item_addition3/replace_inventory_honey_block
replaceitem entity @p[tag=Host] inventory.15 minecraft:air 1
execute if score #MWL Version matches 16.. run function mwj:system/setting/decision_item_addition3/replace_inventory_soul_lantern

## Set scoreboard
scoreboard players operation #MWL AddedTrident = #MWL AddedItem1
scoreboard players operation #MWL AddedConduit = #MWL AddedItem2
scoreboard players operation #MWL AddedCrossbow = #MWL AddedItem3
scoreboard players operation #MWL AddedHoneyBlock = #MWL AddedItem4
scoreboard players operation #MWL AddedLantern = #MWL AddedItem5