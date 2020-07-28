###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: v.1.0
###############################

## Give effect
execute at @s run effect give @a[team=Player,scores={DeathCount=0},distance=..3] minecraft:blindness 20 0 true

## Kill area_effect_cloud
kill @s