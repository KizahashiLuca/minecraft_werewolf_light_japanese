####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Draw
execute if predicate mwj:system/finish/decide_winner/gamemode/draw run function mwj:system/finish/decide_winner/detect_winner/draw

## Gamemode
execute if predicate mwj:game_rule/gamemode_normal run function mwj:system/finish/decide_winner/gamemode/normal_werewolf
execute if predicate mwj:game_rule/gamemode_two_alive run function mwj:system/finish/decide_winner/gamemode/two_alive
execute if predicate mwj:game_rule/gamemode_annihilation run function mwj:system/finish/decide_winner/gamemode/annihilation