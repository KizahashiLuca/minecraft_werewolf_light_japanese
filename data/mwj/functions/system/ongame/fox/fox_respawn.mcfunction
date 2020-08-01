###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 02 Aug 2020
## Version: v.1.1
###############################

## Detected Respawn
execute as @s[scores={RESPAWN=1..}] run function mwj:system/preparation/item/common/bow
execute as @s[scores={RESPAWN=1..}] run function mwj:system/preparation/item/common/arrow
execute as @s[scores={RESPAWN=1..}] run function mwj:system/preparation/item/common/torch

## Detected Unspawn
scoreboard players set @s[scores={RESPAWN=0}] DeathCount 1

## Effect Clear
effect clear @s

## Remove Flag
scoreboard players set @s RoleOfNum 2