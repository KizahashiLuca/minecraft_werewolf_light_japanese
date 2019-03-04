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

## init team setting
team add Player
team join Player @a
team modify Player nametagVisibility never
team modify Player seeFriendlyInvisibles false
team modify Player prefix "\u00a7r"
team modify Player prefix "\u00a77"
team modify Player suffix "\u00a7r"