###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 12 Aug 2020
## Version: v.1.3.1
###############################

## Add a tag
tag @s add TridentThrower

## Set number
execute at @p[tag=TridentThrower] as @e[type=minecraft:trident,nbt={Trident:{id:"minecraft:trident",tag:{Tags:["MWLitem"]}}},distance=0..5] unless score @s NumOfPlayers matches 1.. run scoreboard players operation @s NumOfPlayers = @p[tag=TridentThrower] NumOfPlayers

## Set scoreboard
scoreboard players reset @p[tag=TridentThrower] ThrowTrident

## Remove a tag
tag @s remove TridentThrower