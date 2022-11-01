####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Decide winner
execute if predicate mwj:system/finish/decide_winner/five_sec_rest run function mwj:system/finish/decide_winner/gamemode/main

execute if predicate mwj:system/finish/decide_winner/five_sec_not_rest run scoreboard players set #MWL IsEndGame 1

## Times up
execute if predicate mwj:system/finish/decide_winner/times_up run function mwj:system/finish/decide_winner/schedule/draw