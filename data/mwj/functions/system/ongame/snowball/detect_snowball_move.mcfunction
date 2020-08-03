###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 03 Aug 2020
## Version: v.1.2.1
###############################

## Add a tag
tag @s add DetectSnowballMove

## Detect snowball just born
execute as @s[scores={NumberOfSnowball=0}] run scoreboard players add #MWL NumberOfSnowball 1
scoreboard players operation @s[scores={NumberOfSnowball=0}] NumberOfSnowball = #MWL NumberOfSnowball

## Remove area_effect_cloud preview position of snowball
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball] if score @s NumberOfSnowball = @e[type=minecraft:snowball,nbt={Item:{id:"minecraft:snowball",tag:{Tags:"MWLitem"}}},tag=DetectSnowballMove,limit=1] NumberOfSnowball run kill @s

## Summon area_effect_cloud current position of snowball
execute at @e[type=minecraft:snowball,nbt={Item:{id:"minecraft:snowball",tag:{Tags:"MWLitem"}}},tag=DetectSnowballMove,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["Snowball","JustBorn"],NoGravity:1b,Particle:"minecraft:block minecraft:air",Radius:0.5f,Duration:20}

## Set scoreboard to area_effect_cloud by snowball score
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=JustBorn,sort=nearest,limit=1] run scoreboard players operation @s NumberOfSnowball = @e[type=minecraft:snowball,nbt={Item:{id:"minecraft:snowball",tag:{Tags:"MWLitem"}}},tag=DetectSnowballMove,limit=1] NumberOfSnowball

## Remove tag
tag @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=JustBorn,sort=nearest] remove JustBorn
tag @e[type=minecraft:snowball,nbt={Item:{id:"minecraft:snowball",tag:{Tags:"MWLitem"}}},tag=DetectSnowballMove] remove DetectSnowballMove