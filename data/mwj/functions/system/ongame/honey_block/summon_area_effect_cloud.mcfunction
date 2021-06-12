####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Summon area_effect_cloud
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["HoneyBlock","JustBorn"],NoGravity:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:100000000}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=HoneyBlock,tag=JustBorn,limit=1] NumOfPlayers = @s NumOfPlayers
tag @e[type=minecraft:area_effect_cloud,tag=HoneyBlock,tag=JustBorn] remove JustBorn

## Clear
kill @s