####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Twisting Vines
execute as @a[predicate=mwj:items/twisting_vines/detect_user] at @s run function mwj:system/game_phase/items/twisting_vines/throw_vines

## Set scoreboard
scoreboard players remove @a[predicate=mwj:items/twisting_vines/detect_user_score] DropTwistVines 1
scoreboard players reset @a[predicate=mwj:items/twisting_vines/detect_user_score_error] DropTwistVines