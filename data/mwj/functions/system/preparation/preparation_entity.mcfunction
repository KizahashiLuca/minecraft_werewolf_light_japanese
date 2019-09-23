###############################
## Minecraft Version 1.14
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 17 September 2019
## Version: beta-1.5
###############################

## Kill Entities
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow]
kill @e[type=minecraft:area_effect_cloud]

## Give Effect of Invisibility
effect give @a[team=Player] minecraft:invisibility 1000000 100 true
effect give @a[team=Player] minecraft:resistance 1000000 4 true

## Clear Item
clear @a[team=Player]