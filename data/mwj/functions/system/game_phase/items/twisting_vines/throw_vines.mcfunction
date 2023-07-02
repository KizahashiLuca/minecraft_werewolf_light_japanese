####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set twisting vines
execute as @e[predicate=mwj:items/twisting_vines/detect_position,sort=nearest,limit=1] at @s align xyz run function mwj:system/game_phase/items/twisting_vines/summon_clouds