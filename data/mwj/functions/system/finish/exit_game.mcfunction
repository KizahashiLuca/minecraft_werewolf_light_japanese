###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Send a Common Message
tellraw @a ["",{"text":"----------------------------------\n","color":"reset"}]

## Remove Variables for Game
scoreboard objectives remove GAME
scoreboard objectives remove NUM
scoreboard objectives remove ROLE
scoreboard objectives remove WHITE
scoreboard objectives remove BLACK
## Remove Variables for Timer
scoreboard objectives remove TIME
scoreboard objectives remove Limit
scoreboard objectives remove 20
## Remove Variables for removeitional_roles/time_limit
scoreboard objectives remove AddedRole
scoreboard objectives remove ChangeLimitTime
scoreboard objectives remove RoleTrigger
scoreboard objectives remove TimeTrigger
## Remove Variables for Seer/Medium/Detective/Cat
scoreboard objectives remove DONE
scoreboard objectives remove ROLE_OF_NUM
scoreboard objectives remove SEER_OBJ
scoreboard objectives remove MEDIUM_OBJ
scoreboard objectives remove DETECTIVE_OBJ
## Remove Variables for Redstone Torch
scoreboard objectives remove doNotDrop
scoreboard objectives remove TORCH
## Remove Variables for Kill Log
scoreboard objectives remove DEATH
scoreboard objectives remove KILLER
scoreboard objectives remove VICTIM
scoreboard objectives remove KILLER_NUM
scoreboard objectives remove VICTIM_NUM
scoreboard objectives remove VICTIM_LOG_TEMP
scoreboard objectives remove KILLER_LOG_TEMP
scoreboard players reset @a
scoreboard players reset Time

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
