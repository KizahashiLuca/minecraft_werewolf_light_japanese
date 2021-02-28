###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Put a tag
scoreboard players set @s RoleOfNum 1

## Kill armor_stand
execute as @e[type=minecraft:armor_stand,tag=LittleRedGrave] if score @s NumOfPlayers = @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] NumOfPlayers run kill @s

## Clear effect
effect clear @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}]

## Play sound
execute as @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] at @s run playsound minecraft:block.glass.break block @a ~ ~ ~ 1.0 0.1

## Particle
particle minecraft:block stone ~ ~0.2 ~5 0.2 0.8 0.2 0.3 500

## Give items
clear @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}]
loot replace entity @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] hotbar.0 3 loot mwj:item/common

## Reset kill log
scoreboard players reset @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] NumberOfVictim
scoreboard players reset @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] Second
scoreboard players reset @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] Tick
scoreboard players add #MWL WHITE 1

## Reset scoreboard
scoreboard players set @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] DeathCount 0

## Remove a tag
scoreboard players set @p[tag=Cryptobiosis,scores={CurrentRole=39,RoleOfNum=1}] RoleOfNum 0
tag @s remove Cryptobiosis