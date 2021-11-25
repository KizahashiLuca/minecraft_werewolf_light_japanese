####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Add a tag
tag @s add TridentThrower

## Set number
execute at @p[tag=TridentThrower] as @e[type=minecraft:trident,nbt={Trident:{id:"minecraft:trident",tag:{Tags:["MWLitem"]}}},distance=0..5] unless score @s NumOfPlayers matches 1.. run scoreboard players operation @s NumOfPlayers = @p[tag=TridentThrower] NumOfPlayers

## Set scoreboard
scoreboard players reset @p[tag=TridentThrower] ThrowTrident

## Remove a tag
tag @s remove TridentThrower