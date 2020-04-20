###############################
## Minecraft Version 1.15.2
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 February 2020
## Version: beta-1.6
###############################

## Set the mines system
particle minecraft:explosion ~ ~0.2 ~ 1 1 1 0.5 100
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.5 1.5
effect give @a[team=Player,distance=..2] minecraft:slowness 10 7 false
effect give @a[team=Player,distance=..2] minecraft:glowing 10 1 true
kill @s