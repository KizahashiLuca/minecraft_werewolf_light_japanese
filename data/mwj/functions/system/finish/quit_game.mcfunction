###############################
## Minecraft Version 1.13.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : Feb 11, 2019
## Version: alpha-0.1
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
scoreboard objectives remove ChangeLimitTime
scoreboard objectives remove DEATH
scoreboard objectives remove TORCH
scoreboard objectives remove SEER_OBJ
scoreboard objectives remove MEDIUM_OBJ
scoreboard players reset @a
scoreboard players reset Time

kill @e[type=minecraft:item]
effect clear @a
kill @e[type=minecraft:area_effect_cloud]
clear @a

team remove Player
gamemode creative @a
gamerule showDeathMessages true
gamerule sendCommandFeedback true
