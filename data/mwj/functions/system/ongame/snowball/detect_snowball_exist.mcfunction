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
tag @s add DetectSnowballUnexist

## Detect if not snowball hit
execute as @e[type=minecraft:snowball,nbt={Item:{id:"minecraft:snowball",tag:{Tags:["MWLitem"]}}}] if score @s NumberOfSnowball = @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=DetectSnowballUnexist,limit=1] NumberOfSnowball run tag @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=DetectSnowballUnexist,limit=1] remove DetectSnowballUnexist

## If snowball hit, explode
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball,tag=DetectSnowballUnexist,limit=1] run function mwj:system/ongame/snowball/explode_flashbang