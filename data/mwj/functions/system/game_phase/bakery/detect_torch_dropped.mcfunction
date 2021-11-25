####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.16-1.17    ##
##   Author     : @KizahashiLuca  ##
##   Date       : 04 May 2021     ##
##   Version    : v.2.0-pre1      ##
## (C) 2019-2021 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send Message
execute as @s[scores={CountOfBakery=..0}] run function mwj:system/game_phase/bakery/message_error
execute as @s[scores={CountOfBakery=1..}] run function mwj:system/game_phase/bakery/message_baked

## Reset Scoreboard
scoreboard players reset @s DropTorch