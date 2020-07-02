###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:elytra",tag:{Unbreakable:1b}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:snowball",tag:{display:{Name:'"\\u00a7r\\u00a7bフラッシュバン"',Lore:['"\\u00a7r\\u00a7c盲目 (0:20)"','"\\u00a7r\\u00A7f投擲範囲3mに発効"']}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:potion",tag:{display:{Name:'"\\u00A7r\\u00A7f透明化のポーション"'},CustomPotionEffects:[{Id:14b,Duration:600}],CustomPotionColor:16777215}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:potion",tag:{display:{Name:'"\\u00A7r\\u00A7f俊敏のポーション"'},CustomPotionEffects:[{Id:1b,Amplifier:2b,Duration:600}],CustomPotionColor:63217}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:potion",tag:{display:{Name:'"\\u00A7r\\u00A7f跳躍のポーション"',Lore:['"\\u00A7r\\u00A79跳躍力上昇 Ⅹ (0:30)"']},CustomPotionEffects:[{Id:8b,Amplifier:9b,Duration:600}],CustomPotionColor:3470848,HideFlags:32}}}] ThrowItem 1