###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 02 Aug 2020
## Version: v.1.1
###############################

## Add a tag
tag @s add DetectSnowballUnexist

## Detect if not snowball hit
execute as @e[type=minecraft:snowball] if score @s SNOWBALL = @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=DetectSnowballUnexist,limit=1] SNOWBALL run tag @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=DetectSnowballUnexist,limit=1] remove DetectSnowballUnexist

## If snowball hit, explode
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=DetectSnowballUnexist,limit=1] run function mwj:system/ongame/snowball/explode_flashbang