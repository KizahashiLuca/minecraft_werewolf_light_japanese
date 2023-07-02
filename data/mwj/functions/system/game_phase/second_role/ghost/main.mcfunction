####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## First death
execute as @s[scores={DeathCount=1}] run function mwj:system/game_phase/second_role/ghost/first_death

## Send message
title @s[scores={DeathCount=1..,RespawnTime=1}] title ["",{"text":"あなたはここに","color":"white"},{"text":"囚われて","color":"dark_purple","bold":true},{"text":"いる","color":"white"}]

## Change adventure for the Dead
gamemode adventure @s[scores={DeathCount=2..}]
## Teleport spawn
execute unless entity @e[type=minecraft:area_effect_cloud,tag=GhostSpawn,distance=..8] run tp @s[scores={DeathCount=2..}] @e[type=minecraft:area_effect_cloud,tag=GhostSpawn,sort=nearest,limit=1]

## Set effect
effect give @s[scores={DeathCount=2..}] minecraft:weakness infinite 255 true

## Set inventory
execute if data entity @s[scores={DeathCount=2..}] Inventory run function mwj:system/game_phase/common/set_inventory/main