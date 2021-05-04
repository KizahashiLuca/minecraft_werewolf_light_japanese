####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Add a tag
tag @s add DetectPlayer

## Give effect
execute at @e[type=minecraft:area_effect_cloud,tag=HoneyBlock,tag=DetectPlayer,limit=1] as @a[team=Player,scores={DeathCount=0},distance=..4] unless score @s NumOfPlayers = @e[type=minecraft:area_effect_cloud,tag=HoneyBlock,tag=DetectPlayer,limit=1] NumOfPlayers run effect give @s minecraft:slowness 1 2 false

## Remove a tag
tag @s remove DetectPlayer