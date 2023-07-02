####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detected Respawn
loot replace entity @s[scores={RespawnTime=1..}] hotbar.0 3 loot mwj:item/common

## Detected Unspawn
scoreboard players set @s[scores={RespawnTime=0}] DeathCount 1

## Effect Clear
effect clear @s

## Remove Flag
scoreboard players set @s TagOfRoleWork 2