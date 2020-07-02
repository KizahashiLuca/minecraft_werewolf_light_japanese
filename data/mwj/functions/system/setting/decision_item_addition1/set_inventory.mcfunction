###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.11 minecraft:stick{Unbreakable:1} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:totem_of_undying 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:lingering_potion{display:{Name:"\"\\u00A7r\\u00A7f即死の残留ポーション\""},CustomPotionEffects:[{Id:7,Amplifier:3}],CustomPotionColor:16122102} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:ender_pearl 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:diamond_hoe{display:{Lore:["\"\\u00A7r\\u00A77ダメージ増加 ⅭⅭ\""]},Damage:1561,Enchantments:[{id:"minecraft:sharpness",lvl:200}],HideFlags:1} 1

## Set scoreboard
scoreboard players operation Time AddedStick = Time AddedItem1
scoreboard players operation Time AddedTotem = Time AddedItem2
scoreboard players operation Time AddedDeath2 = Time AddedItem3
scoreboard players operation Time AddedPearl = Time AddedItem4
scoreboard players operation Time AddedHoe = Time AddedItem5