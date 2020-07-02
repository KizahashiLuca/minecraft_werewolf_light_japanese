###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jun 2020
## Version: beta-1.6
###############################

## Detect soul_lantern set
execute at @s unless score @e[type=minecraft:item,nbt={Item:{id:"minecraft:soul_lantern",tag:{display:{Tag:"\"SoulLantern\""}}}},sort=nearest,limit=1] NUM matches 1.. run scoreboard players operation @e[type=minecraft:item,nbt={Item:{id:"minecraft:soul_lantern",tag:{display:{Tag:"\"SoulLantern\""}}}},sort=nearest,limit=1] NUM = @s NUM