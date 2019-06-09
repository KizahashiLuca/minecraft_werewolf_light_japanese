###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 10 June 2019
## Version: beta-1.2.2
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

## revoke advancement
advancement revoke @a only mwj:from_nonwolf
advancement revoke @a only mwj:from_wolf

## init preparing
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:area_effect_cloud]
clear @a