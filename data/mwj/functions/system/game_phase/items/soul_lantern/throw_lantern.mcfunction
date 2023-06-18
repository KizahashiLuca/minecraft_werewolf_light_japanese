####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Detect setting lantern
function mwj:system/game_phase/items/soul_lantern/give_soul_lantern
kill @e[predicate=mwj:items/lantern/detect_lantern_position,sort=nearest,limit=1]