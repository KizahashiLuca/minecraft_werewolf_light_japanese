###############################
## Minecraft Version 1.14-1.16
## Minecraft Werewolf Light
## Author : KizahashiLuca
## Date   : 16 Aug 2020
## Version: v.1.4
###############################

## Add a tag
tag @s add DetectSnowballUnexist

## Detect if not snowball hit
execute as @e[type=minecraft:snowball,nbt={Item:{id:"minecraft:snowball",tag:{Tags:["MWLitem"]}}}] if score @s NumberOfSnowball = @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=DetectSnowballUnexist,limit=1] NumberOfSnowball run tag @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=DetectSnowballUnexist,limit=1] remove DetectSnowballUnexist

## If snowball hit, explode
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=DetectSnowballUnexist,limit=1] run function mwj:system/ongame/snowball/explode_flashbang