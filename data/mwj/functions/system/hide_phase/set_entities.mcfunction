####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Kill Entities
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:area_effect_cloud]

## Give Effect of Invisibility
effect give @a[predicate=mwj:player/player] minecraft:invisibility 1000000 100 true
effect give @a[predicate=mwj:player/player] minecraft:resistance 1000000 4 true

## Clear Item
clear @a[predicate=mwj:player/player]