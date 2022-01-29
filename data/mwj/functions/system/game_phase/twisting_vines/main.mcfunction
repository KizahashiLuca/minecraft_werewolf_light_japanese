####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Twisting Vines
execute as @a[predicate=mwj:items/twisting_vines/detect_user] at @s run function mwj:system/game_phase/twisting_vines/throw_vines

## Set scoreboard
scoreboard players remove @a[predicate=mwj:items/twisting_vines/detect_user_score] DropTwistVines 1
scoreboard players reset @a[predicate=mwj:items/twisting_vines/detect_user_score_error] DropTwistVines