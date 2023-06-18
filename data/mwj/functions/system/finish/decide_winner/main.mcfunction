####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.20-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 18 Jun 2023     ##
##   Version    : v.2.1           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Decide winner
execute if predicate mwj:system/finish/decide_winner/five_sec_rest run function mwj:system/finish/decide_winner/gamemode/main

execute if predicate mwj:system/finish/decide_winner/five_sec_not_rest run scoreboard players set #MWL IsEndGame 1

## Times up
execute if predicate mwj:system/finish/decide_winner/times_up run function mwj:system/finish/decide_winner/schedule/draw