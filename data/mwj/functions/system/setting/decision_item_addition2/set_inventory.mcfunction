###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Replace Inventory
replaceitem entity @p[tag=Host] inventory.11 minecraft:elytra{Unbreakable:1b} 1
replaceitem entity @p[tag=Host] inventory.12 minecraft:snowball{display:{Name:'"\\u00a7r\\u00a7bフラッシュバン"',Lore:['"\\u00a7r\\u00a7c盲目 (0:20)"','"\\u00a7r\\u00A7f投擲範囲3mに発効"']}} 1
replaceitem entity @p[tag=Host] inventory.13 minecraft:potion{display:{Name:'"\\u00A7r\\u00A7f透明化のポーション"'},CustomPotionEffects:[{Id:14b,Duration:600}],CustomPotionColor:16777215} 1
replaceitem entity @p[tag=Host] inventory.14 minecraft:potion{display:{Name:'"\\u00A7r\\u00A7f俊敏のポーション"'},CustomPotionEffects:[{Id:1b,Amplifier:2b,Duration:600}],CustomPotionColor:63217} 1
replaceitem entity @p[tag=Host] inventory.15 minecraft:potion{display:{Name:'"\\u00A7r\\u00A7f跳躍のポーション"',Lore:['"\\u00A7r\\u00A79跳躍力上昇 Ⅹ (0:30)"']},CustomPotionEffects:[{Id:8b,Amplifier:9b,Duration:600}],CustomPotionColor:3470848,HideFlags:32} 1

## Set scoreboard
scoreboard players operation #MWL AddedElytra = #MWL AddedItem1
scoreboard players operation #MWL AddedSnowball = #MWL AddedItem2
scoreboard players operation #MWL AddedInvis = #MWL AddedItem3
scoreboard players operation #MWL AddedSpeed = #MWL AddedItem4
scoreboard players operation #MWL AddedJump = #MWL AddedItem5