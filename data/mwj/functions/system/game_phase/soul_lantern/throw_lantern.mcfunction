####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect setting lantern
function mwj:system/game_phase/soul_lantern/give_soul_lantern
kill @e[predicate=mwj:items/lantern/detect_lantern_position,sort=nearest,limit=1]