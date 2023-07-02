####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Kill Entities
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:area_effect_cloud]

## Give Effect of Invisibility
effect give @a[predicate=mwj:player/player] minecraft:invisibility infinite 100 true
effect give @a[predicate=mwj:player/player] minecraft:resistance infinite 4 true

## Clear Item
clear @a[predicate=mwj:player/player]