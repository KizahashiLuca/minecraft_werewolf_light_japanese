###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.11 minecraft:crossbow{Damage:325,Charged:1b,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:"\"\\u00A7r即死の矢\""},CustomPotionEffects:[{Id:7,Amplifier:3,Duration:1}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:"\"\\u00A7r即死の矢\""},CustomPotionEffects:[{Id:7,Amplifier:3,Duration:1}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:"\"\\u00A7r即死の矢\""},CustomPotionEffects:[{Id:7,Amplifier:3,Duration:1}]}}],Enchantments:[{id:"minecraft:multishot",lvl:1}]} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:snowball{display:{Name:"\"\\u00a7r\\u00a7bスタングレネード\"",Lore:["\"\\u00a7r\\u00a7c移動速度低下 Ⅶ (0:15)\"","\"\"","\"\\u00a7r\\u00a75効果:\"","\"\\u00a7r\\u00a7c移動速度上昇 -100%\"","\"\\u00a7r当てた範囲3mに発効\""]}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:potion{display:{Name:"\"\\u00A7r透明化のポーション\""},CustomPotionEffects:[{Id:14,Duration:600}],CustomPotionColor:16777215} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:potion{display:{Name:"\"\\u00A7r俊敏のポーション\""},CustomPotionEffects:[{Id:1,Amplifier:2,Duration:600}],CustomPotionColor:63217} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:potion{display:{Name:"\"\\u00A7r跳躍のポーション\"",Lore:["\"\\u00A7r\\u00A79跳躍力上昇 Ⅹ (0:30)\""]},CustomPotionEffects:[{Id:8,Amplifier:9,Duration:600}],CustomPotionColor:3470848,HideFlags:32} 1

## Set scoreboard
scoreboard players operation Time AddedCrossbow = Time AddedItem1
scoreboard players operation Time AddedSnowball = Time AddedItem2
scoreboard players operation Time AddedInvis = Time AddedItem3
scoreboard players operation Time AddedSpeed = Time AddedItem4
scoreboard players operation Time AddedJump = Time AddedItem5