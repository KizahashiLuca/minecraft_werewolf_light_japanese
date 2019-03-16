###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 04 March 2019
## Version: beta-1.0
###############################

## init gamerule setting
gamemode adventure @a
gamerule sendCommandFeedback false
gamerule commandBlockOutput false
gamerule doMobSpawning false
gamerule doFireTick false
gamerule showDeathMessages false
gamerule announceAdvancements false
difficulty peaceful
effect clear @a

## init preparing
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:area_effect_cloud]
clear @a