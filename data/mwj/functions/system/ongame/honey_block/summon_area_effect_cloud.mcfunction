###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Summon area_effect_cloud
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["HoneyBlock","JustBorn"],NoGravity:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:100000000}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=HoneyBlock,tag=JustBorn,limit=1] NumOfPlayers = @s NumOfPlayers
tag @e[type=minecraft:area_effect_cloud,tag=HoneyBlock,tag=JustBorn] remove JustBorn

## Clear
kill @s