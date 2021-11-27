####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Put a tag
scoreboard players set @s RoleOfNum 1

## Change Spectator for the Dead
gamemode adventure @a[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}]

## Teleport
execute as @e[type=minecraft:armor_stand,tag=LittleRedGrave] if score @s NumOfPlayers = @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] NumOfPlayers run tp @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] @s

## Give an effect
effect clear @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}]

## Set effect
effect give @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] minecraft:resistance 1000000 100 true
effect give @s[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] minecraft:weakness 1000000 255 true

## Set inventory
execute if data entity @s[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] Inventory run function mwj:system/game_phase/common/set_inventory/main

## Kill arrows
execute at @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] run kill @e[type=minecraft:arrow,distance=..2]
execute at @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] run kill @e[type=minecraft:spectral_arrow,distance=..1]

## Remove a tag
scoreboard players set @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] RoleOfNum 0