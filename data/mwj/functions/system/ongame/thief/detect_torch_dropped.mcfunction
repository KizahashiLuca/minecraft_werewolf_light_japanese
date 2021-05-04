####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.14-1.16    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Set Scoreboard
scoreboard players set @s TurnPageNum 0

## Send Trigger Message
function mwj:system/ongame/thief/message_to_thief

## Reset Scoreboard
scoreboard players reset @s DropTorch