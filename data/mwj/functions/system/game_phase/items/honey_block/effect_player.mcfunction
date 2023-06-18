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
tag @s add DetectPlayer

## Give effect
execute as @a[team=Player,scores={DeathCount=0},distance=..4] unless score @s NumOfPlayers = @e[predicate=mwj:items/honey_block/detect_cloud,tag=DetectPlayer,limit=1] NumOfPlayers run effect give @s minecraft:slowness 1 2 false

## Remove a tag
tag @s remove DetectPlayer