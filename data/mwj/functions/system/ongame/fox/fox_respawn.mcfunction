###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 25 August 2019
## Version: beta-1.4
###############################

## Detected Respawn
execute if score @s RESPAWN matches 1.. as @s function mwj:system/preparation/item/common/bow
execute if score @s RESPAWN matches 1.. as @s function mwj:system/preparation/item/common/arrow
execute if score @s RESPAWN matches 1.. as @s function mwj:system/preparation/item/common/torch

## Detected UnRespawn
execute if score @s RESPAWN matches 0 run effect clear @s
execute if score @s RESPAWN matches 0 run scoreboard players set @s DEATH 1

## Reset Scoreboard
scoreboard players reset @s SPAWN_TIME_SECOND
scoreboard players reset @s SPAWN_TIME_TICK

## Remove Flag
scoreboard players set @s ROLE_OF_NUM 0