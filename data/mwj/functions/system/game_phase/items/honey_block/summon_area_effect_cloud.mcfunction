####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Summon area_effect_cloud
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["HoneyBlock","JustBorn"],NoGravity:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:100000000}
scoreboard players operation @e[predicate=mwj:items/honey_block/detect_cloud,tag=JustBorn,limit=1] NumOfPlayers = @s NumOfPlayers
tag @e[predicate=mwj:items/honey_block/detect_cloud,tag=JustBorn] remove JustBorn

## Clear
kill @s