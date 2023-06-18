####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Snowball
execute as @e[predicate=mwj:items/snowball/snowball] at @s run function mwj:system/game_phase/items/snowball/detect_snowball_move
execute as @e[predicate=mwj:items/snowball/set_num_cloud] at @s run function mwj:system/game_phase/items/snowball/detect_snowball_exist