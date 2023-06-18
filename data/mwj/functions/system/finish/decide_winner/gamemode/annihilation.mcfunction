####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Winner is White
execute if predicate mwj:system/finish/decide_winner/gamemode/annihilation/white run function mwj:system/finish/decide_winner/detect_winner/villager

## Winner is Black
execute if predicate mwj:system/finish/decide_winner/gamemode/annihilation/black run function mwj:system/finish/decide_winner/detect_winner/werewolf

## Winner is Fox
execute if predicate mwj:system/finish/decide_winner/gamemode/annihilation/fox run function mwj:system/finish/decide_winner/detect_winner/fox