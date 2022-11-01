####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 01 Nov 2022     ##
##   Version    : v.2.0.1         ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Scoreboard
scoreboard players set @s TurnPageNum 0

## Send Trigger Message
function mwj:system/game_phase/current_role/clever_wolf/message_to_clever_wolf

## Reset Scoreboard
scoreboard players reset @s DropTorch