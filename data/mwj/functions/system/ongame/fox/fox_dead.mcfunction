###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Flag
scoreboard players set @s ROLE_OF_NUM 1

## Store Respawn Time Limit
scoreboard players operation @s SPAWN_TIME_SEC = Time SECOND
scoreboard players operation @s SPAWN_TIME_TICK = Time TICK
scoreboard players remove @s SPAWN_TIME_SEC 10

## Reset Death Count
scoreboard players set @s DEATH 0