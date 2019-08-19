###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 August 2019
## Version: beta-1.3
###############################

## Remove Objectives
scoreboard objectives remove GAME
scoreboard objectives remove NUM
scoreboard objectives remove TIME
scoreboard objectives remove Limit
scoreboard objectives remove 20
scoreboard objectives remove ROLE
scoreboard objectives remove DONE
scoreboard objectives remove KILLER
scoreboard objectives remove VICTIM
scoreboard objectives remove WHITE
scoreboard objectives remove BLACK
scoreboard objectives remove AddedRole
scoreboard objectives remove ChangeLimitTime
scoreboard objectives remove DEATH
scoreboard objectives remove TORCH
scoreboard objectives remove SEER_OBJ
scoreboard objectives remove MEDIUM_OBJ
scoreboard objectives remove DETECTIVE_OBJ
scoreboard objectives remove doNotDrop
scoreboard objectives remove RoleTrigger
scoreboard objectives remove TimeTrigger
scoreboard objectives remove VICTIM_LOG_TEMP
scoreboard objectives remove KILLER_LOG_TEMP
scoreboard players reset @a
scoreboard players reset Time

## Kill Entities
kill @e[type=minecraft:item]
kill @e[type=minecraft:area_effect_cloud]
effect clear @a
clear @a

## Remove Tags
tag @a remove host
tag @a remove WereWolf
tag @a remove NonWolf
tag @a remove Cat
tag @a remove StrayBullet_wolf
tag @a remove StrayBullet_nonwolf

## Revoke Advancements
advancement revoke @a only mwj:be_killed_by_nonwolf
advancement revoke @a only mwj:be_killed_by_wolf
advancement revoke @a only mwj:be_killed_by_cat
advancement revoke @a only mwj:killed_player

## Remove a Team
team remove Player

## Change Gamerules
gamemode creative @a
gamerule showDeathMessages true
gamerule sendCommandFeedback true
