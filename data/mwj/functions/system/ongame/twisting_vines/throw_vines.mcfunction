####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set twisting vines
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:twisting_vines",tag:{Tags:["MWLitem"]}}},sort=nearest,limit=1] at @s align xyz run function mwj:system/ongame/twisting_vines/summon_clouds