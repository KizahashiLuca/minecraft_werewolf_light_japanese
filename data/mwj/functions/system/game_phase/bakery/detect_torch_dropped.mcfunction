####################################
## Minecraft Werewolf Light       ##
##   MC-Version : JE 1.19-        ##
##   Author     : @KizahashiLuca  ##
##   Date       : 07 Oct 2022     ##
##   Version    : v.2.0           ##
## (C) 2019-2022 KizahashiLuca.   ##
## Licensed under CC BY-SA 4.0.   ##
####################################

## Send Message
execute as @s[scores={CountOfBakery=..0}] run function mwj:system/game_phase/bakery/message_error
execute as @s[scores={CountOfBakery=1..}] run function mwj:system/game_phase/bakery/message_baked

## Reset Scoreboard
scoreboard players reset @s DropTorch