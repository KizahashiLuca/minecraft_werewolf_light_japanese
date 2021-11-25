####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect setting lantern
function mwj:system/game_phase/soul_lantern/give_soul_lantern
kill @e[predicate=mwj:game_phase/lantern/detect_lantern_position,sort=nearest,limit=1]
## Set scoreboard
scoreboard players remove @s[predicate=mwj:game_phase/lantern/detect_lantern_user_score] DropLantern 1
scoreboard players reset @s[predicate=mwj:game_phase/lantern/detect_lantern_user_score_error] DropLantern