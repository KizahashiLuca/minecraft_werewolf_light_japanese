####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Add a tag
tag @s add TridentThrower

## Set number
execute as @e[predicate=mwj:items/trident/just_thrown_trident,distance=0..5] unless score @s NumOfPlayers matches 1.. run scoreboard players operation @s NumOfPlayers = @p[predicate=mwj:items/trident/trident_thrower_tag] NumOfPlayers

## Set scoreboard
scoreboard players reset @p[predicate=mwj:items/trident/trident_thrower_tag] ThrowTrident

## Remove a tag
tag @s remove TridentThrower