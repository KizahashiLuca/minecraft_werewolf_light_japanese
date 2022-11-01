####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Winner is White
execute if predicate mwj:system/finish/decide_winner/gamemode/two_alive/white run function mwj:system/finish/decide_winner/detect_winner/villager

## Winner is Black
execute if predicate mwj:system/finish/decide_winner/gamemode/two_alive/black run function mwj:system/finish/decide_winner/detect_winner/werewolf

## Winner is Fox
execute if predicate mwj:system/finish/decide_winner/gamemode/two_alive/fox run function mwj:system/finish/decide_winner/detect_winner/fox