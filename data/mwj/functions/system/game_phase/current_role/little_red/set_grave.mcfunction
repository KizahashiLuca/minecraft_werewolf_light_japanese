####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Put a tag
execute as @s[advancements={mwj:be_killed_by_werewolf=true}] run tag @s add Cryptobiosis
execute as @s[tag=Cryptobiosis] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Small:1b,Tags:["LittleRedGrave","NotNumbered"]}
execute as @s[tag=Cryptobiosis] run scoreboard players operation @e[type=minecraft:armor_stand,tag=LittleRedGrave,tag=NotNumbered] NumOfPlayers = @s NumOfPlayers
tag @e[type=minecraft:armor_stand,tag=LittleRedGrave,tag=NotNumbered] remove NotNumbered

## Set inventory
execute if data entity @s[tag=Cryptobiosis] Inventory run function mwj:system/game_phase/common/set_inventory/main

## Give an effect
effect give @s[tag=Cryptobiosis] minecraft:resistance 1000000 100 true