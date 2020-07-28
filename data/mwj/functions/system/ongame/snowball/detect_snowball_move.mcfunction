###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 24 Jul 2020
## Version: v.1.0
###############################

## Add a tag
tag @s add DetectSnowballMove

## Detect snowball just born
execute as @s[scores={SNOWBALL=0}] run scoreboard players add #MWL SNOWBALL 1
scoreboard players operation @s[scores={SNOWBALL=0}] SNOWBALL = #MWL SNOWBALL

## Remove area_effect_cloud preview position of snowball
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball] if score @s SNOWBALL = @e[type=minecraft:snowball,tag=DetectSnowballMove,limit=1] SNOWBALL run kill @s

## Summon area_effect_cloud current position of snowball
execute at @e[type=minecraft:snowball,tag=DetectSnowballMove,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["Snowball","JustBorn"],NoGravity:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:20}

## Set scoreboard to area_effect_cloud by snowball score
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=JustBorn,sort=nearest,limit=1] run scoreboard players operation @s SNOWBALL = @e[type=minecraft:snowball,tag=DetectSnowballMove,limit=1] SNOWBALL

## Remove tag
tag @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=JustBorn,sort=nearest] remove JustBorn
tag @e[type=minecraft:snowball,tag=DetectSnowballMove] remove DetectSnowballMove