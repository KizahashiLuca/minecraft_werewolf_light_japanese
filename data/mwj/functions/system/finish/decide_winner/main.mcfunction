####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Decide winner
execute if score #MWL Second matches 6.. if score #MWL IsEndGame matches 0 run function mwj:system/finish/decide_winner/gamemode/main

## Times up
execute if score #MWL Second matches 0 if score #MWL Tick matches 0 run function mwj:system/finish/decide_winner/schedule/draw