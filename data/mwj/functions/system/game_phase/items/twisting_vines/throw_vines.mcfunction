####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set twisting vines
execute as @e[predicate=mwj:items/twisting_vines/detect_position,sort=nearest,limit=1] at @s align xyz run function mwj:system/game_phase/items/twisting_vines/summon_clouds