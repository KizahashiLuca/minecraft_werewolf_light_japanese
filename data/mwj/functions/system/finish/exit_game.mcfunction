###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Send a Common Message
tellraw @a ["",{"text":"----------------------------------\n","color":"reset"}]

## Remove Variables for Game
scoreboard objectives remove GAME
scoreboard objectives remove NUM
scoreboard objectives remove ROLE
scoreboard objectives remove WHITE
scoreboard objectives remove BLACK
scoreboard objectives remove PURPLE
## Remove Variables for Timer
scoreboard objectives remove SECOND
scoreboard objectives remove TICK
scoreboard objectives remove 20
## Variables for Info
scoreboard objectives remove Info
## Remove Variables for Role
scoreboard objectives remove ROLE_OF_NUM
scoreboard objectives remove doNotDrop
scoreboard objectives remove TORCH
scoreboard objectives remove DONE
scoreboard objectives remove 10
scoreboard objectives remove PAGE_NUMER
scoreboard objectives remove PAGE_DENOM
scoreboard objectives remove ROLE_PAGE
scoreboard objectives remove ROLE_PAGE_NUM
scoreboard objectives remove ROLE_TARGET
scoreboard objectives remove ROLE_R_PAGE
scoreboard objectives remove ROLE_L_PAGE
scoreboard objectives remove ROLE_BUTTON
#### Fox
scoreboard objectives remove STRAY_BY_FOX
scoreboard objectives remove SPAWN_TIME_SEC
scoreboard objectives remove SPAWN_TIME_TICK
scoreboard objectives remove RESPAWN
#### Cat
scoreboard objectives remove STRAY_BY_CAT
## Remove Variables for Kill Log
scoreboard objectives remove DEATH
scoreboard objectives remove KILLER
scoreboard objectives remove VICTIM
scoreboard objectives remove KILLER_NUM
scoreboard objectives remove VICTIM_NUM
scoreboard objectives remove VICTIM_FLAG
scoreboard objectives remove KILLER_FLAG
scoreboard objectives remove KILLLOG_NUM
scoreboard objectives remove KILLLOG_FOX
scoreboard objectives remove KILLLOG_CAT
## Remove Players
scoreboard players reset @a
scoreboard players reset Time
scoreboard players reset 残り時間

## Kill Entities
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:area_effect_cloud]
effect clear @a
clear @a

## Remove Tags
tag @a remove host
tag @a remove WereWolf
tag @a remove NonWolf
tag @a remove Cat
tag @a remove StrayBullet
tag @a remove SeeredFox

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