####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Flag
scoreboard players set @s TagOfRoleWork 1

## Store Respawn Time Limit
scoreboard players operation @s FoxSpawnSecond = #MWL Second
scoreboard players operation @s FoxSpawnTick = #MWL Tick
scoreboard players remove @s FoxSpawnSecond 10

## Reset Death Count
scoreboard players set @s DeathCount 0

## Remove tag
tag @s remove TridentDeadFoxbyWolf