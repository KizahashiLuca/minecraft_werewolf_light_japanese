###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Detected Respawn
loot replace entity @s[scores={RespawnTime=1..}] hotbar.0 1 loot mwj:item/common/bow
loot replace entity @s[scores={RespawnTime=1..}] hotbar.1 1 loot mwj:item/common/arrow
loot replace entity @s[scores={RespawnTime=1..}] hotbar.2 1 loot mwj:item/common/redstone_torch

## Detected Unspawn
scoreboard players set @s[scores={RespawnTime=0}] DeathCount 1

## Effect Clear
effect clear @s

## Remove Flag
scoreboard players set @s RoleOfNum 2