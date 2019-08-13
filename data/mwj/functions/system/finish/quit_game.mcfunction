###############################
## Minecraft Version 1.14.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 14 July 2019
## Version: beta-1.3
###############################

## objective remove
scoreboard objectives remove GAME
scoreboard objectives remove NUM
scoreboard objectives remove TIME
scoreboard objectives remove Limit
scoreboard objectives remove 20
scoreboard objectives remove ROLE
scoreboard objectives remove DONE
scoreboard objectives remove WHITE
scoreboard objectives remove BLACK
scoreboard objectives remove AddedRole
scoreboard objectives remove ChangeLimitTime
scoreboard objectives remove DEATH
scoreboard objectives remove TORCH
scoreboard objectives remove SEER_OBJ
scoreboard objectives remove MEDIUM_OBJ
scoreboard objectives remove doNotDrop
scoreboard objectives remove RoleTrigger
scoreboard objectives remove TimeTrigger
scoreboard players reset @a
scoreboard players reset Time

kill @e[type=minecraft:item]
effect clear @a
kill @e[type=minecraft:area_effect_cloud]
clear @a
tag @a remove host
tag @a remove WereWolf
tag @a remove NonWolf
tag @a remove AttackedFox
tag @a remove DamagedFox
tag @a remove KilledFox
tag @a remove StrayBullet_wolf
tag @a remove StrayBullet_nonwolf


## revoke advancement
advancement revoke @a only mwj:damaged_by_nonwolf
advancement revoke @a only mwj:killed_by_nonwolf
advancement revoke @a only mwj:killed_by_wolf

team remove Player
gamemode creative @a
gamerule showDeathMessages true
gamerule sendCommandFeedback true
