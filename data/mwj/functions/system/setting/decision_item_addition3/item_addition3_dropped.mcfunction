###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Detect Dropping
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:elytra",tag:{Unbreakable:1}}}] ThrowItem 1
scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:conduit",tag:{display:{Name:"\"\\u00a7r\\u00a7b地雷\"",Lore:["\"\\u00a7r\\u00a79発光 (0:10)\"","\"\\u00a7r\\u00a7c移動速度低下 Ⅶ (0:10)\"","\"\"","\"\\u00a7r\\u00a75効果:\"","\"\\u00a7r\\u00a7c移動速度上昇 -100%\"","\"\\u00a7r捨てた範囲1.5mに発効\""],Tag:"\"Mine\""}}}}] ThrowItem 1
# scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:",tag:{}}}] ThrowItem 1
# scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:",tag:{}}}] ThrowItem 1
# scoreboard players set @e[type=minecraft:item,nbt={Item:{id:"minecraft:",tag:{}}}] ThrowItem 1