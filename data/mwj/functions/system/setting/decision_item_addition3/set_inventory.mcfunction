###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.11 minecraft:elytra{Unbreakable:1} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:conduit{display:{Name:"\"\\u00a7r\\u00a7b地雷\"",Lore:["\"\\u00a7r\\u00a79発光 (0:10)\"","\"\\u00a7r\\u00a7c移動速度低下 Ⅶ (0:10)\"","\"\"","\"\\u00a7r\\u00a75効果:\"","\"\\u00a7r\\u00a7c移動速度上昇 -100%\"","\"\\u00a7r捨てた範囲1.5mに発効\""],Tag:"\"Mine\""}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:air 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:air 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:air 1

## Set scoreboard
scoreboard players operation Time AddedElytra = Time AddedItem1
scoreboard players operation Time AddedConduit = Time AddedItem2
# scoreboard players operation Time Added = Time AddedItem3
# scoreboard players operation Time Added = Time AddedItem4
# scoreboard players operation Time Added = Time AddedItem5