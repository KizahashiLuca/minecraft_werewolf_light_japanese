###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: v.1.0
###############################

## Flag
scoreboard players set @s RoleOfNum 1

## Store Respawn Time Limit
scoreboard players operation @s FoxSpawnSecond = #MWL Second
scoreboard players operation @s FoxSpawnTick = #MWL Tick
scoreboard players remove @s FoxSpawnSecond 10

## Reset Death Count
scoreboard players set @s DeathCount 0