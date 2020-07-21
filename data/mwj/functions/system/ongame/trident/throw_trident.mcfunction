###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 21 Jul 2020
## Version: beta-1.6
###############################

## Add a tag
tag @s add TridentThrower

## Set number
execute at @p[tag=TridentThrower] as @e[type=minecraft:trident,distance=0..5] unless score @s NUM matches 1.. run scoreboard players operation @s NUM = @p[tag=TridentThrower] NUM

## Set scoreboard
scoreboard players set @p[tag=TridentThrower] ThrowTrident 0

## Remove a tag
tag @s remove TridentThrower