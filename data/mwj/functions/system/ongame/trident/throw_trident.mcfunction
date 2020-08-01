###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 02 Aug 2020
## Version: v.1.1
###############################

## Add a tag
tag @s add TridentThrower

## Set number
execute at @p[tag=TridentThrower] as @e[type=minecraft:trident,distance=0..5] unless score @s NUM matches 1.. run scoreboard players operation @s NUM = @p[tag=TridentThrower] NUM

## Set scoreboard
scoreboard players set @p[tag=TridentThrower] ThrowTrident 0

## Remove a tag
tag @s remove TridentThrower