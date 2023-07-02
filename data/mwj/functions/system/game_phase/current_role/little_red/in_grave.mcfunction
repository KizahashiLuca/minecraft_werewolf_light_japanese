####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Put a tag
scoreboard players set @s TagOfRoleWork 1

## Change Spectator for the Dead
gamemode adventure @p[tag=Cryptobiosis,scores={CurrentRole=39,TagOfRoleWork=1}]

## Teleport
execute as @e[type=minecraft:armor_stand,tag=LittleRedGrave] if score @s NumOfPlayers = @p[tag=Cryptobiosis,scores={CurrentRole=39,TagOfRoleWork=1}] NumOfPlayers run tp @p[tag=Cryptobiosis,scores={CurrentRole=39,TagOfRoleWork=1}] @s

## Give an effect
effect clear @p[tag=Cryptobiosis,scores={CurrentRole=39,TagOfRoleWork=1}]

## Set effect
effect give @p[tag=Cryptobiosis,scores={CurrentRole=39,TagOfRoleWork=1}] minecraft:resistance infinite 100 true
effect give @p[tag=Cryptobiosis,scores={CurrentRole=39,TagOfRoleWork=1}] minecraft:weakness infinite 255 true

## Set inventory
execute as @p[tag=Cryptobiosis,scores={CurrentRole=39,TagOfRoleWork=1}] if data entity @s Inventory run function mwj:system/game_phase/common/set_inventory/main

## Kill arrows
execute as @p[tag=Cryptobiosis,scores={CurrentRole=39,TagOfRoleWork=1}] run kill @e[type=minecraft:arrow,distance=..2]
execute as @p[tag=Cryptobiosis,scores={CurrentRole=39,TagOfRoleWork=1}] run kill @e[type=minecraft:spectral_arrow,distance=..1]

## Remove a tag
scoreboard players set @p[tag=Cryptobiosis,scores={CurrentRole=39,TagOfRoleWork=1}] TagOfRoleWork 0