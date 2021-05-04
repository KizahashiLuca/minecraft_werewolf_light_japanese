####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Snowball
execute as @a[team=Player,nbt={Inventory:[{id:"minecraft:snow_block"}]}] run function mwj:system/ongame/snowball/clear_snowball
execute as @e[type=minecraft:snowball,nbt={Item:{id:"minecraft:snowball",tag:{Tags:["MWLitem"]}}}] run function mwj:system/ongame/snowball/detect_snowball_move
execute as @e[type=minecraft:area_effect_cloud,tag=Snowball,scores={NumberOfSnowball=1..}] run function mwj:system/ongame/snowball/detect_snowball_exist