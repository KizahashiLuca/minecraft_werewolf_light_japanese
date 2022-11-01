####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Kill entities
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:area_effect_cloud]
kill @e[type=minecraft:armor_stand,tag=LittleRedGrave]
kill @e[type=minecraft:snowball]
kill @e[type=minecraft:trident]

## Set host
tag @p[sort=nearest] add Host

## Set gamemode
gamemode adventure @a[predicate=mwj:gamemode/not_spectator]

## Clear effects
effect clear @a[predicate=mwj:gamemode/not_spectator]

## Set effect
effect give @a[predicate=mwj:gamemode/not_spectator] minecraft:resistance 1000000 4 true

## Clear recipes
recipe take @a *

## Clear inventory
clear @a