####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Snowball
execute as @e[predicate=mwj:items/snowball/snowball] at @s run function mwj:system/game_phase/snowball/detect_snowball_move
execute as @e[predicate=mwj:items/snowball/set_num_cloud] at @s run function mwj:system/game_phase/snowball/detect_snowball_exist