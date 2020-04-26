###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:crossbow",tag:{Damage:325,Charged:1b,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:"\"\\u00A7r即死の矢\""},CustomPotionEffects:[{Id:7,Amplifier:3,Duration:1}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:"\"\\u00A7r即死の矢\""},CustomPotionEffects:[{Id:7,Amplifier:3,Duration:1}]}},{id:"minecraft:tipped_arrow",Count:1b,tag:{display:{Name:"\"\\u00A7r即死の矢\""},CustomPotionEffects:[{Id:7,Amplifier:3,Duration:1}]}}],Enchantments:[{id:"minecraft:multishot",lvl:1}]}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:snowball",tag:{display:{Name:"\"\\u00a7r\\u00a7bスタングレネード\"",Lore:["\"\\u00a7r\\u00a7c移動速度低下 Ⅶ (0:15)\"","\"\"","\"\\u00a7r\\u00a75効果:\"","\"\\u00a7r\\u00a7c移動速度上昇 -100%\"","\"\\u00a7r当てた範囲3mに発効\""]}}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:potion",tag:{display:{Name:"\"\\u00A7r透明化のポーション\""},CustomPotionEffects:[{Id:14,Duration:600}],CustomPotionColor:16777215}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:potion",tag:{display:{Name:"\"\\u00A7r俊敏のポーション\""},CustomPotionEffects:[{Id:1,Amplifier:2,Duration:600}],CustomPotionColor:63217}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:potion",tag:{display:{Name:"\"\\u00A7r跳躍のポーション\"",Lore:["\"\\u00A7r\\u00A79跳躍力上昇 Ⅹ (0:30)\""]},CustomPotionEffects:[{Id:8,Amplifier:9,Duration:600}],CustomPotionColor:3470848,HideFlags:32}}}] ThrowItem 1