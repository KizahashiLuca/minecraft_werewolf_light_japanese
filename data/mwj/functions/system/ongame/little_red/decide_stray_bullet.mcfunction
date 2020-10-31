###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 22 Aug 2020
## Version: v.1.4.1
###############################

## Put Tag
execute as @s[advancements={mwj:be_killed_by_wolf=true}] run tag @r[scores={CurrentRole=1..9,DeathCount=0}] add Cryptobiosis
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Tags:["Cryptobiosis","NotNumbered"]}
scoreboard players operation @e[type=minecraft:armor_stand,tag=Cryptobiosis,tag=NotNumbered] NumOfPlayers = @s NumOfPlayers
tag @e[type=minecraft:armor_stand,tag=Cryptobiosis,tag=NotNumbered] remove NotNumbered