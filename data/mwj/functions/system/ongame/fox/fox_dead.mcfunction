###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Flag
scoreboard players set @s ROLE_OF_NUM 1

## Store Respawn Time Limit
scoreboard players operation @s SPAWN_TIME_SEC = Time SECOND
scoreboard players operation @s SPAWN_TIME_TICK = Time TICK
scoreboard players remove @s SPAWN_TIME_SEC 10

## Reset Death Count
scoreboard players set @s DEATH 0
scoreboard players add Time PURPLE 1