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
scoreboard objectives remove PREV_NUM
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
## Remove Variables for Number of Roles
scoreboard objectives remove WOLF
scoreboard objectives remove MADMAN
scoreboard objectives remove VILLAGER
scoreboard objectives remove SEER
scoreboard objectives remove MEDIUM
scoreboard objectives remove CAT
scoreboard objectives remove MASON
scoreboard objectives remove DETECTIVE
scoreboard objectives remove FOX
## Remove Variables for Mason Number
scoreboard objectives remove MASON_PAIR
scoreboard objectives remove MASON_PAIR_NUM
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
#### Mason
scoreboard objectives remove MASON_PAIR
scoreboard objectives remove MASON_PAIR_NUM
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
## Remove Variables for Role Addition
scoreboard objectives remove AddedRole
scoreboard objectives remove AddedFox
scoreboard objectives remove AddedVilla
scoreboard objectives remove AddedMason
scoreboard objectives remove AddedDetec
scoreboard objectives remove AddedCat
scoreboard objectives remove PrevAddedRole
## Remove Variables for Time Limit
scoreboard objectives remove ChangeLimitTime
## Remove Variables for Game Rules
scoreboard objectives remove GameMode
## Remove Variables for ROLE
scoreboard objectives remove DENOMINATOR
## Remove Variables for Item
scoreboard objectives remove TENS_DIGIT
scoreboard objectives remove ONES_DIGIT
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

## teleport to alive players
execute if entity @p[gamemode=adventure] run tp @a[team=Player] @r[gamemode=adventure]

## Change Gamerules
gamemode adventure @a
gamerule showDeathMessages true
gamerule sendCommandFeedback true

## Remove a Team
team remove Player
