###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Set Gamerules
gamemode adventure @a
gamerule sendCommandFeedback false
gamerule commandBlockOutput false
gamerule doMobSpawning false
gamerule doFireTick false
gamerule showDeathMessages false
gamerule announceAdvancements false
difficulty peaceful
effect clear @a

## Revoke Advancements
advancement revoke @a only mwj:be_killed_by_nonwolf
advancement revoke @a only mwj:be_killed_by_wolf
advancement revoke @a only mwj:be_killed_by_cat
advancement revoke @a only mwj:killed_player

## Kill Entities
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:area_effect_cloud]
clear @a